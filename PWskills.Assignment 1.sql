use mavenmovies;
1)--list all the details of actor;
select * from actor;

2) list all customer information from database;
select * from customer; 

3)list different countries;
select distinct country from country;

4) display all active customers;
select * from customer where active = 1;

5)list of all rental IDs for customer with ID1;
select rental_id from rental where customer_id = 1;

6)display all the films whose rental duration is greater than 5;
select * from film where rental_duration > 5;

7) list total no. of films whose replacement cost is greater than $15 and lesser than $20;
select count(*) from film as total_films where replacement_cost between 15 and 20;
or
where replacement_cost > '15' and replacement_cost < '20';

8) find number of films whose rental rate is less than $1;
select count(film_id) from film
where rental_rate < 1;

9)display count of unique firstname of actors;
select distinct count(first_name) from actor;

10) display first 10 records from customer table;
select * from customer limit 10;

11) display first 3 records from customer table whose name starts with 'b';
select * from customer where first_name like 'b%' limit 3;

12) display the names of first 5 movies which are rated as 'G';
Select title, rating from film where rating = 'g' limit 5;

13) find all customers whose name starts with a;
select * from customer where first_name like 'a%';

14)find all customers whose name ends with a;
select * from customer where first_name like '%a';

15) find all customers whose firstname has 'NI' in any position;
select * from customer where first_name like '%ni%';

16) find all customers whose firstname has 'r' in 2nd position;
select * from customer where first_name like '_r%';

17) find all customers whose firstname starts with 'a' and at least 5characters n length;
select * from customer where first_name like 'a%'and length(first_name) >= 5;

18) find all customers whose name starts with a and ends with o;
select * from customer where first_name like 'a%o';

19) get the films with pg and pg-13 rating using IN operator;
select * from film where rating in ('pg', 'pg-13');

20) get the films with length between 50 and 100 using between operator;
select * from film where length between 50 and 100;

21) get top 50 actors using limit operator;
select * from actor limit 50;

22) get didstinct film ids from inventory table;
select distinct(film_id) from inventory;



