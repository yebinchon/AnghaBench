
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aug_bitgen_t ;


 double legacy_chisquare (int *,double) ;
 double legacy_noncentral_chisquare (int *,double,double) ;

double legacy_noncentral_f(aug_bitgen_t *aug_state, double dfnum, double dfden,
                           double nonc) {
  double t = legacy_noncentral_chisquare(aug_state, dfnum, nonc) * dfden;
  return t / (legacy_chisquare(aug_state, dfden) * dfnum);
}
