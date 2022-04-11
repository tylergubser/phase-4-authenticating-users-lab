Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"

end
