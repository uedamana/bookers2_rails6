Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "/home/about" =>"homes#about"
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update,]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
