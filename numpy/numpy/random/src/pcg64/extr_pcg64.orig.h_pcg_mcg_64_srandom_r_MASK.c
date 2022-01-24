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
typedef  unsigned int uint64_t ;
struct pcg_state_64 {unsigned int state; } ;

/* Variables and functions */

inline void FUNC0(struct pcg_state_64 *rng, uint64_t initstate) {
  rng->state = initstate | 1u;
}