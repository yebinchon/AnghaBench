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
typedef  scalar_t__ uint8_t ;
struct pcg_state_8 {unsigned int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcg_state_8*) ; 

inline void FUNC1(struct pcg_state_8 *rng, uint8_t initstate) {
  rng->state = 0U;
  FUNC0(rng);
  rng->state += initstate;
  FUNC0(rng);
}