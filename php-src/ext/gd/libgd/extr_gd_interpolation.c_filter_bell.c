
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double pow (double const,double) ;

__attribute__((used)) static double filter_bell(const double x1)
{
 const double x = x1 < 0.0 ? -x1 : x1;

 if (x < 0.5) return (0.75 - x*x);
 if (x < 1.5) return (0.5 * pow(x - 1.5, 2.0));
 return 0.0;
}
