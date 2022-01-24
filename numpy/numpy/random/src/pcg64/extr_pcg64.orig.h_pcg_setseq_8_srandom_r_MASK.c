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
typedef  unsigned int uint8_t ;
struct pcg_state_setseq_8 {unsigned int state; unsigned int inc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcg_state_setseq_8*) ; 

inline void FUNC1(struct pcg_state_setseq_8 *rng,
                                   uint8_t initstate, uint8_t initseq) {
  rng->state = 0U;
  rng->inc = (initseq << 1u) | 1u;
  FUNC0(rng);
  rng->state += initstate;
  FUNC0(rng);
}