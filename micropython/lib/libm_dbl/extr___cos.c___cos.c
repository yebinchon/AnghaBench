
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double double_t ;


 double C1 ;
 double C2 ;
 double C3 ;
 double C4 ;
 double C5 ;
 double C6 ;

double __cos(double x, double y)
{
 double_t hz,z,r,w;

 z = x*x;
 w = z*z;
 r = z*(C1+z*(C2+z*C3)) + w*w*(C4+z*(C5+z*C6));
 hz = 0.5*z;
 w = 1.0-hz;
 return w + (((1.0-w)-hz) + (z*r-x*y));
}
