
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_gauss (int *) ;
 double legacy_standard_gamma (int *,double) ;
 double sqrt (double) ;

double legacy_standard_t(aug_bitgen_t *aug_state, double df) {
  double num, denom;

  num = legacy_gauss(aug_state);
  denom = legacy_standard_gamma(aug_state, df / 2);
  return sqrt(df / 2) * num / sqrt(denom);
}
