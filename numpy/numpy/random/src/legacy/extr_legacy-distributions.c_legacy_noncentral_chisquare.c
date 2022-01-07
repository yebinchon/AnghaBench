
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bit_generator; } ;
typedef TYPE_1__ aug_bitgen_t ;


 double NPY_NAN ;
 double legacy_chisquare (TYPE_1__*,double) ;
 double legacy_gauss (TYPE_1__*) ;
 scalar_t__ npy_isnan (double) ;
 long random_poisson (int ,double) ;
 double sqrt (double) ;

double legacy_noncentral_chisquare(aug_bitgen_t *aug_state, double df,
                                   double nonc) {
  double out;
  if (nonc == 0) {
    return legacy_chisquare(aug_state, df);
  }
  if (1 < df) {
    const double Chi2 = legacy_chisquare(aug_state, df - 1);
    const double n = legacy_gauss(aug_state) + sqrt(nonc);
    return Chi2 + n * n;
  } else {
    const long i = random_poisson(aug_state->bit_generator, nonc / 2.0);
    out = legacy_chisquare(aug_state, df + 2 * i);

    if (npy_isnan(nonc)){
      return NPY_NAN;
    } else {
    return out;
    }
  }
}
