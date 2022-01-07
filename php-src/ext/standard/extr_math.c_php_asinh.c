
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ M_E ;
 double asinh (double) ;
 double log (scalar_t__) ;
 int pow (double,int) ;
 scalar_t__ sqrt (int) ;

__attribute__((used)) static double php_asinh(double z)
{
 return(log(z + sqrt(1 + pow(z, 2))) / log(M_E));


}
