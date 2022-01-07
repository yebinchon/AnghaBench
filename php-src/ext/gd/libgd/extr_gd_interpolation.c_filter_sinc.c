
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double M_PI ;
 double sin (double) ;

__attribute__((used)) static double filter_sinc(const double x)
{

 if (x == 0.0) return(1.0);
 return (sin(M_PI * (double) x) / (M_PI * (double) x));
}
