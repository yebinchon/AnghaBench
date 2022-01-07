
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_standard_gamma (int *,double) ;

double legacy_chisquare(aug_bitgen_t *aug_state, double df) {
  return 2.0 * legacy_standard_gamma(aug_state, df / 2.0);
}
