
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float KernelBessel_Order1 (double) ;
 float M_PI ;

__attribute__((used)) static double filter_bessel(const double x)
{
 if (x == 0.0f)
  return (double)(M_PI/4.0f);
 return (KernelBessel_Order1((double)M_PI*x)/(2.0f*x));
}
