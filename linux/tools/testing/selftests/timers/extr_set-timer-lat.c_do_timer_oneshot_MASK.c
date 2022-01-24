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
typedef  int /*<<< orphan*/  timeout ;
struct timeval {int tv_sec; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FUNC0 (int,int const) ; 
 int FUNC1 (int,int const) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC4 (int,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int clock_id, int flags)
{
	timer_t tm1;
	const int interval = 0;
	struct timeval timeout;
	int err;

	err = FUNC4(clock_id, flags, interval, &tm1);
	/* Unsupported case - return 0 to not fail the test */
	if (err)
		return err == 1 ? 0 : err;

	FUNC2(&timeout, 0, sizeof(timeout));
	timeout.tv_sec = 5;
	do {
		err = FUNC3(0, NULL, NULL, NULL, &timeout);
	} while (err == -1 && errno == EINTR);

	FUNC5(tm1);
	err = FUNC1(flags, interval);
	err |= FUNC0(flags, interval);
	return err;
}