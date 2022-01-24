#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  inc; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ pcg_state_setseq_128 ;
typedef  int /*<<< orphan*/  pcg128_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCG_DEFAULT_MULTIPLIER_128 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(pcg_state_setseq_128 *rng,
                                            pcg128_t delta) {
  rng->state = FUNC0(rng->state, delta,
                                   PCG_DEFAULT_MULTIPLIER_128, rng->inc);
}