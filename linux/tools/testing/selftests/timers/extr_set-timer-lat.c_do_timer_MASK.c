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
typedef  int /*<<< orphan*/  timer_t ;

/* Variables and functions */
 int TIMER_SECS ; 
 int alarmcount ; 
 int FUNC0 (int,int const) ; 
 int FUNC1 (int,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int clock_id, int flags)
{
	timer_t tm1;
	const int interval = TIMER_SECS;
	int err;

	err = FUNC1(clock_id, flags, interval, &tm1);
	/* Unsupported case - return 0 to not fail the test */
	if (err)
		return err == 1 ? 0 : err;

	while (alarmcount < 5)
		FUNC2(1);

	FUNC3(tm1);
	return FUNC0(flags, interval);
}