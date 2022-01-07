
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double KernelBessel_J1 (double) ;
 float KernelBessel_P1 (double) ;
 float KernelBessel_Q1 (double) ;
 double M_PI ;
 float cos (double) ;
 float sin (double) ;
 float sqrt (float) ;

__attribute__((used)) static double KernelBessel_Order1(double x)
{
 double p, q;

 if (x == 0.0)
  return (0.0f);
 p = x;
 if (x < 0.0)
  x=(-x);
 if (x < 8.0)
  return (p*KernelBessel_J1(x));
 q = (double)sqrt(2.0f/(M_PI*x))*(double)(KernelBessel_P1(x)*(1.0f/sqrt(2.0f)*(sin(x)-cos(x)))-8.0f/x*KernelBessel_Q1(x)*
  (-1.0f/sqrt(2.0f)*(sin(x)+cos(x))));
 if (p < 0.0f)
  q = (-q);
 return (q);
}
