
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_gauss (int *) ;

double legacy_normal(aug_bitgen_t *aug_state, double loc, double scale) {
  return loc + scale * legacy_gauss(aug_state);
}
