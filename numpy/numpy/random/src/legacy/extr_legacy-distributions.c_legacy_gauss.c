
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_gauss; double gauss; } ;
typedef TYPE_1__ aug_bitgen_t ;


 double legacy_double (TYPE_1__*) ;
 double log (double) ;
 double sqrt (double) ;

double legacy_gauss(aug_bitgen_t *aug_state) {
  if (aug_state->has_gauss) {
    const double temp = aug_state->gauss;
    aug_state->has_gauss = 0;
    aug_state->gauss = 0.0;
    return temp;
  } else {
    double f, x1, x2, r2;

    do {
      x1 = 2.0 * legacy_double(aug_state) - 1.0;
      x2 = 2.0 * legacy_double(aug_state) - 1.0;
      r2 = x1 * x1 + x2 * x2;
    } while (r2 >= 1.0 || r2 == 0.0);


    f = sqrt(-2.0 * log(r2) / r2);

    aug_state->gauss = f * x1;
    aug_state->has_gauss = 1;
    return f * x2;
  }
}
