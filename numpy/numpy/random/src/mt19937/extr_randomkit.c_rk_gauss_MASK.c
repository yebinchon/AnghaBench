#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int has_gauss; double gauss; } ;
typedef  TYPE_1__ rk_state ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (TYPE_1__*) ; 
 double FUNC2 (double) ; 

double FUNC3(rk_state *state) {
  if (state->has_gauss) {
    const double tmp = state->gauss;
    state->gauss = 0;
    state->has_gauss = 0;
    return tmp;
  } else {
    double f, x1, x2, r2;

    do {
      x1 = 2.0 * FUNC1(state) - 1.0;
      x2 = 2.0 * FUNC1(state) - 1.0;
      r2 = x1 * x1 + x2 * x2;
    } while (r2 >= 1.0 || r2 == 0.0);

    /* Polar method, a more efficient version of the Box-Muller approach. */
    f = FUNC2(-2.0 * FUNC0(r2) / r2);
    /* Keep for next call */
    state->gauss = f * x1;
    state->has_gauss = 1;
    return f * x2;
  }
}