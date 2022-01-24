#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bit_generator; } ;
typedef  TYPE_1__ aug_bitgen_t ;

/* Variables and functions */
 double NPY_NAN ; 
 double FUNC0 (TYPE_1__*,double) ; 
 double FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (double) ; 
 long FUNC3 (int /*<<< orphan*/ ,double) ; 
 double FUNC4 (double) ; 

double FUNC5(aug_bitgen_t *aug_state, double df,
                                   double nonc) {
  double out;
  if (nonc == 0) {
    return FUNC0(aug_state, df);
  }
  if (1 < df) {
    const double Chi2 = FUNC0(aug_state, df - 1);
    const double n = FUNC1(aug_state) + FUNC4(nonc);
    return Chi2 + n * n;
  } else {
    const long i = FUNC3(aug_state->bit_generator, nonc / 2.0);
    out = FUNC0(aug_state, df + 2 * i);
    /* Insert nan guard here to avoid changing the stream */
    if (FUNC2(nonc)){
      return NPY_NAN;
    } else {
    return out;
    }
  }
}