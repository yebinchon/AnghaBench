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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int PREEMPT_TIME ; 
 int THREAD_FACTOR ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  preempt_vmx_c ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int running ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int threads_starting ; 

int FUNC8(void)
{
	int i, rc, threads;
	pthread_t *tids;

	threads = FUNC7(_SC_NPROCESSORS_ONLN) * THREAD_FACTOR;
	tids = FUNC1(threads * sizeof(pthread_t));
	FUNC0(!tids);

	running = true;
	threads_starting = threads;
	for (i = 0; i < threads; i++) {
		rc = FUNC3(&tids[i], NULL, preempt_vmx_c, NULL);
		FUNC0(rc);
	}

	FUNC5(stdout, NULL);
	/* Not really nessesary but nice to wait for every thread to start */
	FUNC2("\tWaiting for all workers to start...");
	while(threads_starting)
		asm volatile("": : :"memory");
	FUNC2("done\n");

	FUNC2("\tWaiting for %d seconds to let some workers get preempted...", PREEMPT_TIME);
	FUNC6(PREEMPT_TIME);
	FUNC2("done\n");

	FUNC2("\tStopping workers...");
	/*
	 * Working are checking this value every loop. In preempt_vmx 'cmpwi r5,0; bne 2b'.
	 * r5 will have loaded the value of running.
	 */
	running = 0;
	for (i = 0; i < threads; i++) {
		void *rc_p;
		FUNC4(tids[i], &rc_p);

		/*
		 * Harness will say the fail was here, look at why preempt_vmx
		 * returned
		 */
		if ((long) rc_p)
			FUNC2("oops\n");
		FUNC0((long) rc_p);
	}
	FUNC2("done\n");

	return 0;
}