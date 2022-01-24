#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_child_flags; scalar_t__* PMChildFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* PMSignalState ; 
 scalar_t__ PM_CHILD_WALSENDER ; 

bool
FUNC1(int slot)
{
	FUNC0(slot > 0 && slot <= PMSignalState->num_child_flags);
	slot--;

	if (PMSignalState->PMChildFlags[slot] == PM_CHILD_WALSENDER)
		return true;
	else
		return false;
}