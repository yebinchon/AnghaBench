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
 double FUNC2 (int) ; 

double FUNC3(aug_bitgen_t *aug_state, double mean, double scale) {
  double U, X, Y;
  double mu_2l;

  mu_2l = mean / (2 * scale);
  Y = FUNC1(aug_state);
  Y = mean * Y * Y;
  X = mean + mu_2l * (Y - FUNC2(4 * scale * Y + Y * Y));
  U = FUNC0(aug_state);
  if (U <= mean / (mean + X)) {
    return X;
  } else {
    return mean * mean / X;
  }
}