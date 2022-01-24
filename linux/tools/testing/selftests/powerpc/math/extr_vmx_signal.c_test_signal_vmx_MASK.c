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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ITERATIONS ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int THREAD_FACTOR ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 scalar_t__ bad_context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int running ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_vmx_c ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int threads_starting ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(void)
{
	int i, j, rc, threads;
	void *rc_p;
	pthread_t *tids;

	threads = FUNC10(_SC_NPROCESSORS_ONLN) * THREAD_FACTOR;
	tids = FUNC3(threads * sizeof(pthread_t));
	FUNC0(!tids);

	running = true;
	threads_starting = threads;
	for (i = 0; i < threads; i++) {
		rc = FUNC5(&tids[i], NULL, signal_vmx_c, NULL);
		FUNC0(rc);
	}

	FUNC8(stdout, NULL);
	FUNC4("\tWaiting for %d workers to start... %d", threads, threads_starting);
	while (threads_starting) {
		asm volatile("": : :"memory");
		FUNC11(1000);
		FUNC4(", %d", threads_starting);
	}
	FUNC4(" ...done\n");

	FUNC4("\tSending signals to all threads %d times...", ITERATIONS);
	for (i = 0; i < ITERATIONS; i++) {
		for (j = 0; j < threads; j++) {
			FUNC7(tids[j], SIGUSR1);
		}
		FUNC9(1);
	}
	FUNC4("done\n");

	FUNC4("\tKilling workers...");
	running = 0;
	for (i = 0; i < threads; i++) {
		FUNC6(tids[i], &rc_p);

		/*
		 * Harness will say the fail was here, look at why signal_vmx
		 * returned
		 */
		if ((long) rc_p || bad_context)
			FUNC4("oops\n");
		if (bad_context)
			FUNC1(stderr, "\t!! bad_context is true\n");
		FUNC0((long) rc_p || bad_context);
	}
	FUNC4("done\n");

	FUNC2(tids);
	return 0;
}