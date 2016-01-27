Myblog::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'posts#index'
  get "/pages/about" => "pages#about", as: :about
  get "/pages/contact" => "pages#contact", as: :contact

  #get "/posts" => "posts#index", as: :posts 
  #get "/posts/new" => "posts#new", as: :new_post
  #post "/posts" => "posts#create"
  #get "/post/:id" => "posts#show", as: :post  
  #get "/post/:id/edit" => "posts#edit", as: :edit_post  
  #patch "/post/:id" => "posts#update" 
  #delete "/post/:id" => "posts#destroy"

  resources :posts do

    resources :comments

  end


end