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
 double FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ *,double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double,double) ; 

double FUNC5(aug_bitgen_t *aug_state, double a, double b) {
  double Ga, Gb;

  if ((a <= 1.0) && (b <= 1.0)) {
    double U, V, X, Y;
    /* Use Johnk's algorithm */

    while (1) {
      U = FUNC1(aug_state);
      V = FUNC1(aug_state);
      X = FUNC4(U, 1.0 / a);
      Y = FUNC4(V, 1.0 / b);

      if ((X + Y) <= 1.0) {
        if (X + Y > 0) {
          return X / (X + Y);
        } else {
          double logX = FUNC3(U) / a;
          double logY = FUNC3(V) / b;
          double logM = logX > logY ? logX : logY;
          logX -= logM;
          logY -= logM;

          return FUNC0(logX - FUNC3(FUNC0(logX) + FUNC0(logY)));
        }
      }
    }
  } else {
    Ga = FUNC2(aug_state, a);
    Gb = FUNC2(aug_state, b);
    return Ga / (Ga + Gb);
  }
}