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
typedef  int /*<<< orphan*/  uint8_t ;
struct pcg_state_8 {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCG_DEFAULT_MULTIPLIER_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

inline void FUNC1(struct pcg_state_8 *rng, uint8_t delta) {
  rng->state = FUNC0(rng->state, delta, PCG_DEFAULT_MULTIPLIER_8,
                                 (uint8_t)(((intptr_t)rng) | 1u));
}