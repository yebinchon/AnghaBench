
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_gauss; double gauss; } ;
typedef TYPE_1__ rk_state ;


 double log (double) ;
 double rk_double (TYPE_1__*) ;
 double sqrt (double) ;

double rk_gauss(rk_state *state) {
  if (state->has_gauss) {
    const double tmp = state->gauss;
    state->gauss = 0;
    state->has_gauss = 0;
    return tmp;
  } else {
    double f, x1, x2, r2;

    do {
      x1 = 2.0 * rk_double(state) - 1.0;
      x2 = 2.0 * rk_double(state) - 1.0;
      r2 = x1 * x1 + x2 * x2;
    } while (r2 >= 1.0 || r2 == 0.0);


    f = sqrt(-2.0 * log(r2) / r2);

    state->gauss = f * x1;
    state->has_gauss = 1;
    return f * x2;
  }
}
