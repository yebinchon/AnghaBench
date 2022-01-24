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
struct pcg_state_16 {int state; } ;

/* Variables and functions */
 int PCG_DEFAULT_MULTIPLIER_16 ; 

inline void FUNC0(struct pcg_state_16 *rng) {
  rng->state = rng->state * PCG_DEFAULT_MULTIPLIER_16;
}