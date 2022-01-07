
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 scalar_t__ exp (int ) ;
 int legacy_standard_exponential (int *) ;
 double pow (scalar_t__,int) ;

double legacy_power(aug_bitgen_t *aug_state, double a) {
  return pow(1 - exp(-legacy_standard_exponential(aug_state)), 1. / a);
}
