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
typedef  size_t TimeoutId ;
struct TYPE_2__ {int indicator; scalar_t__ active; int /*<<< orphan*/ * timeout_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* all_timeouts ; 
 int /*<<< orphan*/  all_timeouts_initialized ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 scalar_t__ num_active_timeouts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(TimeoutId id, bool keep_indicator)
{
	/* Assert request is sane */
	FUNC0(all_timeouts_initialized);
	FUNC0(all_timeouts[id].timeout_handler != NULL);

	/* Disable timeout interrupts for safety. */
	FUNC2();

	/* Find the timeout and remove it from the active list. */
	if (all_timeouts[id].active)
		FUNC4(FUNC3(id));

	/* Mark it inactive, whether it was active or not. */
	if (!keep_indicator)
		all_timeouts[id].indicator = false;

	/* Reschedule the interrupt, if any timeouts remain active. */
	if (num_active_timeouts > 0)
		FUNC5(FUNC1());
}