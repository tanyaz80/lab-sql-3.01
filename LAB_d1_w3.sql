USE sakila;
-- 1. Drop column picture from staff.
ALTER TABLE staff
DROP COLUMN picture;

-- 2.A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. 

SELECT * FROM staff;
SELECT * FROM customer
WHERE last_name='SANDERS';

INSERT INTO staff (store_id, first_name, last_name, email, address_id, username) 
    SELECT store_id, first_name, last_name, email, address_id, first_name
    FROM customer
    WHERE last_name='SANDERS';
    
   SELECT * FROM staff;
   
DELETE FROM rental WHERE customer_id= 75;  
DELETE FROM payment WHERE customer_id= 75;  
DELETE FROM customer WHERE customer_id= 75;  

-- 3.Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
SELECT * FROM rental;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

SELECT * FROM inventory
WHERE film_id = 1; -- inventory id should be new?5? In store1 there are 1,2,3,4 inventory_id

INSERT INTO rental (rental_date, customer_id, staff_id) 
    SELECT curdate(), 130, 1;
-- to check that it worked
SELECT * FROM rental
WHERE customer_id=130

    