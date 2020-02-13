

-- Part 1 --
-- Query 1 --     

 SELECT OrderNumber , (QuotedPrice*QuantityOrdered) AS Revenue 
 FROM order_details


-- Part 1 --
-- Query 2 --
 
 
SELECT EmpFirstName, TIMESTAMPDIFF(year, EmpBirthDate,CURRENT_DATE()) as EmpBirthyear FROM employees ORDER BY EmpBirthyear ASC;



-- Part2 --
-- Query 1 --

SELECT * FROM employees WHERE EmpFirstName LIKE '%r%' AND EmpLastName NOT LIKE '%q%'



-- Part 4 -- 
-- Query1 -- 

  SELECT DISTINCT cus.CustFirstName,cus.CustPhoneNumber 
  FROM order_details ord JOIN orders o ON ord.OrderNumber=o.OrderNumber 
  JOIN customers cus ON o.CustomerID=cus.CustomerID 
  JOIN products pd ON ord.ProductNumber=pd.ProductNumber 
  WHERE pd.ProductName like '%helmet'
  
  -- Query 2 --
  
  SELECT c.CustFirstName, e.EmpFirstName FROM customers c JOIN employees e  ON c.CustFirstName = e.EmpFirstName
  
  -- Part 5 --
  
SELECT sum(ord.QuantityOrdered*ord.QuotedPrice*2) as "OR Amount"  
FROM order_details ord
JOIN orders o ON ord .OrderNumber=o.OrderNumber
JOIN customers c ON  o.CustomerID=c.CustomerID
WHERE c.CustState='OR'