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
typedef  int /*<<< orphan*/  bitgen_t ;
typedef  double RAND_INT_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (double,double) ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RAND_INT_TYPE FUNC3(bitgen_t *bitgen_state,
                                               RAND_INT_TYPE good,
                                               RAND_INT_TYPE bad,
                                               RAND_INT_TYPE sample) {
  RAND_INT_TYPE d1, k, z;
  double d2, u, y;

  d1 = bad + good - sample;
  d2 = (double)FUNC0(bad, good);

  y = d2;
  k = sample;
  while (y > 0.0) {
    u = FUNC2(bitgen_state);
    y -= (RAND_INT_TYPE)FUNC1(u + y / (d1 + k));
    k--;
    if (k == 0)
      break;
  }
  z = (RAND_INT_TYPE)(d2 - y);
  if (good > bad)
    z = sample - z;
  return z;
}