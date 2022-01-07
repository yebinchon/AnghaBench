
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 int legacy_standard_exponential (int *) ;
 double pow (int ,int) ;

double legacy_weibull(aug_bitgen_t *aug_state, double a) {
  if (a == 0.0) {
    return 0.0;
  }
  return pow(legacy_standard_exponential(aug_state), 1. / a);
}
