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
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_2__ {int iterations; int counter; int timeline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 TYPE_1__ test_data_two_threads ; 
 scalar_t__ test_stress_two_threads_shared_timeline_thread ; 

int FUNC6(void)
{
	pthread_t a, b;
	int valid;
	int timeline = FUNC3();

	valid = FUNC5(timeline);
	FUNC0(valid, "Failure allocating timeline\n");

	test_data_two_threads.iterations = 1 << 16;
	test_data_two_threads.counter = 0;
	test_data_two_threads.timeline = timeline;

	/*
	 * Use a single timeline to synchronize two threads
	 * hammmering on the same counter.
	 */

	FUNC1(&a, NULL, (void *(*)(void *))
		       test_stress_two_threads_shared_timeline_thread,
		       (void *)0);
	FUNC1(&b, NULL, (void *(*)(void *))
		       test_stress_two_threads_shared_timeline_thread,
		       (void *)1);

	FUNC2(a, NULL);
	FUNC2(b, NULL);

	/* make sure the threads did not trample on one another */
	FUNC0(test_data_two_threads.counter ==
	       test_data_two_threads.iterations * 2,
	       "Counter has unexpected value\n");

	FUNC4(timeline);

	return 0;
}