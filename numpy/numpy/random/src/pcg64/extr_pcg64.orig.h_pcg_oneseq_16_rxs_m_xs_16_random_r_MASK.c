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
typedef  int /*<<< orphan*/  uint16_t ;
struct pcg_state_16 {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcg_state_16*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

inline uint16_t FUNC2(struct pcg_state_16 *rng) {
  uint16_t oldstate = rng->state;
  FUNC0(rng);
  return FUNC1(oldstate);
}