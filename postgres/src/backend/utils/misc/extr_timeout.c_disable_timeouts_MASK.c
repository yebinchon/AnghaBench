#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t TimeoutId ;
struct TYPE_5__ {int indicator; scalar_t__ active; int /*<<< orphan*/ * timeout_handler; } ;
struct TYPE_4__ {size_t id; int /*<<< orphan*/  keep_indicator; } ;
typedef  TYPE_1__ DisableTimeoutParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* all_timeouts ; 
 int /*<<< orphan*/  all_timeouts_initialized ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 scalar_t__ num_active_timeouts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(const DisableTimeoutParams *timeouts, int count)
{
	int			i;

	FUNC0(all_timeouts_initialized);

	/* Disable timeout interrupts for safety. */
	FUNC2();

	/* Cancel the timeout(s). */
	for (i = 0; i < count; i++)
	{
		TimeoutId	id = timeouts[i].id;

		FUNC0(all_timeouts[id].timeout_handler != NULL);

		if (all_timeouts[id].active)
			FUNC4(FUNC3(id));

		if (!timeouts[i].keep_indicator)
			all_timeouts[id].indicator = false;
	}

	/* Reschedule the interrupt, if any timeouts remain active. */
	if (num_active_timeouts > 0)
		FUNC5(FUNC1());
}