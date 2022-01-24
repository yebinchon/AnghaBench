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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  bitgen_t ;
typedef  int /*<<< orphan*/  RAND_INT_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int64_t FUNC1(bitgen_t *bitgen_state, int64_t good,
                                     int64_t bad, int64_t sample) {
  return (int64_t)FUNC0(bitgen_state,
                                                 (RAND_INT_TYPE)good,
                                                 (RAND_INT_TYPE)bad,
                                                 (RAND_INT_TYPE)sample);
}