
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;
 double pow (double,double) ;

__attribute__((used)) static double
cbrt(double x)
{
 int isneg = (x < 0.0);
 double absx = fabs(x);
 double tmpres = pow(absx, (double) 1.0 / (double) 3.0);







 if (tmpres > 0.0)
  tmpres -= (tmpres - absx / (tmpres * tmpres)) / (double) 3.0;

 return isneg ? -tmpres : tmpres;
}
