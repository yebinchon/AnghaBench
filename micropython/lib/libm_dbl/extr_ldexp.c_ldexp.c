
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double scalbn (double,int) ;

double ldexp(double x, int n)
{
 return scalbn(x, n);
}
