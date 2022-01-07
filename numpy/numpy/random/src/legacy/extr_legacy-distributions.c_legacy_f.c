
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_chisquare (int *,double) ;

double legacy_f(aug_bitgen_t *aug_state, double dfnum, double dfden) {
  return ((legacy_chisquare(aug_state, dfnum) * dfden) /
          (legacy_chisquare(aug_state, dfden) * dfnum));
}
