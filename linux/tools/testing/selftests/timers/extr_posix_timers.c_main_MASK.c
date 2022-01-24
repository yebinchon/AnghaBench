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

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_PROCESS_CPUTIME_ID ; 
 int /*<<< orphan*/  CLOCK_THREAD_CPUTIME_ID ; 
 int /*<<< orphan*/  ITIMER_PROF ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  ITIMER_VIRTUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(int argc, char **argv)
{
	FUNC4("Testing posix timers. False negative may happen on CPU execution \n");
	FUNC4("based timers if other threads run on the CPU...\n");

	if (FUNC0(ITIMER_VIRTUAL) < 0)
		return FUNC2();

	if (FUNC0(ITIMER_PROF) < 0)
		return FUNC2();

	if (FUNC0(ITIMER_REAL) < 0)
		return FUNC2();

	if (FUNC1(CLOCK_THREAD_CPUTIME_ID) < 0)
		return FUNC2();

	/*
	 * It's unfortunately hard to reliably test a timer expiration
	 * on parallel multithread cputime. We could arm it to expire
	 * on DELAY * nr_threads, with nr_threads busy looping, then wait
	 * the normal DELAY since the time is elapsing nr_threads faster.
	 * But for that we need to ensure we have real physical free CPUs
	 * to ensure true parallelism. So test only one thread until we
	 * find a better solution.
	 */
	if (FUNC1(CLOCK_PROCESS_CPUTIME_ID) < 0)
		return FUNC2();

	return FUNC3();
}