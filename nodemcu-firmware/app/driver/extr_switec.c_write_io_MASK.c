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
typedef  int uint32_t ;
struct TYPE_3__ {int* pinstate; size_t current_state; int mask; } ;
typedef  TYPE_1__ DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((always_inline)) inline void FUNC1(DATA *d)
{
  uint32_t pin_state = d->pinstate[d->current_state];

  FUNC0(pin_state, d->mask & ~pin_state, 0, 0);
}