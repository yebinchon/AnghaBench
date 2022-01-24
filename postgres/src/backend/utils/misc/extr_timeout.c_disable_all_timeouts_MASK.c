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
struct itimerval {int dummy; } ;
struct TYPE_2__ {int active; int indicator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int MAX_TIMEOUTS ; 
 int /*<<< orphan*/  FUNC0 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* all_timeouts ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ num_active_timeouts ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 

void
FUNC4(bool keep_indicators)
{
	int			i;

	FUNC1();

	/*
	 * Only bother to reset the timer if we think it's active.  We could just
	 * let the interrupt happen anyway, but it's probably a bit cheaper to do
	 * setitimer() than to let the useless interrupt happen.
	 */
	if (num_active_timeouts > 0)
	{
		struct itimerval timeval;

		FUNC0(&timeval, 0, sizeof(struct itimerval));
		if (FUNC3(ITIMER_REAL, &timeval, NULL) != 0)
			FUNC2(FATAL, "could not disable SIGALRM timer: %m");
	}

	num_active_timeouts = 0;

	for (i = 0; i < MAX_TIMEOUTS; i++)
	{
		all_timeouts[i].active = false;
		if (!keep_indicators)
			all_timeouts[i].indicator = false;
	}
}