class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.string :name
      t.float :price
      t.string :size
      t.string :image_url
      t.timestamps
    end

    create_table :costume_stores do |t|
      t.string :name
      t.string :location
      t.integer :costume_inventory
      t.integer :num_of_employees
      t.boolean :is_in_business
      t.datetime :opening_time
      t.datetime :closing_time
    end

    create_table :haunted_houses do |t|
      t.string :name
      t.string :location
      t.string :theme
      t.float :price
      t.boolean :family_friendly
      t.datetime :opening_date
      t.datetime :closing_date
      t.text :description
    end
  end
end
