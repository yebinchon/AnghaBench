
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double atanh (double) ;
 double log (int) ;

__attribute__((used)) static double php_atanh(double z)
{



 return(0.5 * log((1 + z) / (1 - z)));

}
