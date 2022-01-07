
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __cos (double,int ) ;
 double __sin (double,int ,int ) ;
 double floor (double) ;
 double pi ;

__attribute__((used)) static double sinpi(double x)
{
 int n;



 x = x * 0.5;
 x = 2 * (x - floor(x));


 n = 4 * x;
 n = (n+1)/2;
 x -= n * 0.5;

 x *= pi;
 switch (n) {
 default:
 case 0:
  return __sin(x, 0, 0);
 case 1:
  return __cos(x, 0);
 case 2:
  return __sin(-x, 0, 0);
 case 3:
  return -__cos(x, 0);
 }
}
