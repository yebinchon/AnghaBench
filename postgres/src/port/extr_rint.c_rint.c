
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ceil (double) ;
 double floor (double) ;
 scalar_t__ isnan (double) ;

double
rint(double x)
{
 double x_orig;
 double r;


 if (isnan(x))
  return x;

 if (x <= 0.0)
 {

  if (x == 0.0)
   return x;
  x_orig = x;
  x += 0.5;





  if (x >= 0.0)
   return -0.0;






  if (x == x_orig + 1.0)
   return x_orig;


  r = floor(x);




  if (r != x)
   return r;
  return floor(x * 0.5) * 2.0;
 }
 else
 {




  x_orig = x;
  x -= 0.5;
  if (x <= 0.0)
   return 0.0;
  if (x == x_orig - 1.0)
   return x_orig;
  r = ceil(x);
  if (r != x)
   return r;
  return ceil(x * 0.5) * 2.0;
 }
}
