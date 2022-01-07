
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_INEXACT ;
 int feclearexcept (int ) ;
 int fetestexcept (int ) ;
 double rint (double) ;

double nearbyint(double x)
{






 x = rint(x);




 return x;
}
