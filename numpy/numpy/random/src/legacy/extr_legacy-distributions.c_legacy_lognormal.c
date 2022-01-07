
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double exp (int ) ;
 int legacy_normal (int *,double,double) ;

double legacy_lognormal(aug_bitgen_t *aug_state, double mean, double sigma) {
  return exp(legacy_normal(aug_state, mean, sigma));
}
