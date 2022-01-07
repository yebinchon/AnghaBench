
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_standard_exponential (int *) ;

double legacy_exponential(aug_bitgen_t *aug_state, double scale) {
  return scale * legacy_standard_exponential(aug_state);
}
