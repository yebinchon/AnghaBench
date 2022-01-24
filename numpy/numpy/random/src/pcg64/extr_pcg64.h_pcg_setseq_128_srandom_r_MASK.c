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
struct TYPE_4__ {unsigned int state; unsigned int inc; } ;
typedef  TYPE_1__ pcg_state_setseq_128 ;
typedef  unsigned int pcg128_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC1(pcg_state_setseq_128 *rng,
                                            pcg128_t initstate,
                                            pcg128_t initseq) {
  rng->state = 0U;
  rng->inc = (initseq << 1u) | 1u;
  FUNC0(rng);
  rng->state += initstate;
  FUNC0(rng);
}