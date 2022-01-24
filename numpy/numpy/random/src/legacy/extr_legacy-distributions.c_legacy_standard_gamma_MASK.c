#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  aug_bitgen_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (double) ; 
 double FUNC4 (double,int) ; 
 int FUNC5 (int) ; 

double FUNC6(aug_bitgen_t *aug_state, double shape) {
  double b, c;
  double U, V, X, Y;

  if (shape == 1.0) {
    return FUNC2(aug_state);
  }
  else if (shape == 0.0) {
    return 0.0;
  } else if (shape < 1.0) {
    for (;;) {
      U = FUNC0(aug_state);
      V = FUNC2(aug_state);
      if (U <= 1.0 - shape) {
        X = FUNC4(U, 1. / shape);
        if (X <= V) {
          return X;
        }
      } else {
        Y = -FUNC3((1 - U) / shape);
        X = FUNC4(1.0 - shape + shape * Y, 1. / shape);
        if (X <= (V + Y)) {
          return X;
        }
      }
    }
  } else {
    b = shape - 1. / 3.;
    c = 1. / FUNC5(9 * b);
    for (;;) {
      do {
        X = FUNC1(aug_state);
        V = 1.0 + c * X;
      } while (V <= 0.0);

      V = V * V * V;
      U = FUNC0(aug_state);
      if (U < 1.0 - 0.0331 * (X * X) * (X * X))
        return (b * V);
      if (FUNC3(U) < 0.5 * X * X + b * (1. - V + FUNC3(V)))
        return (b * V);
    }
  }
}