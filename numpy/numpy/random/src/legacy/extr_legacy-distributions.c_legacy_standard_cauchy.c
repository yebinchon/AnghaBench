
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_gauss (int *) ;

double legacy_standard_cauchy(aug_bitgen_t *aug_state) {
  return legacy_gauss(aug_state) / legacy_gauss(aug_state);
}
