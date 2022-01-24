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
struct TYPE_2__ {int timeline; int iterations; int counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 TYPE_1__ test_data_two_threads ; 

__attribute__((used)) static int FUNC6(void *d)
{
	int thread_id = (long)d;
	int timeline = test_data_two_threads.timeline;
	int iterations = test_data_two_threads.iterations;
	int fence, valid, ret, i;

	for (i = 0; i < iterations; i++) {
		fence = FUNC1(timeline, "fence",
					     i * 2 + thread_id);
		valid = FUNC3(fence);
		FUNC0(valid, "Failure allocating fence\n");

		/* Wait on the prior thread to complete */
		ret = FUNC5(fence, -1);
		FUNC0(ret > 0, "Problem occurred on prior thread\n");

		/*
		 * Confirm the previous thread's writes are visible
		 * and then increment
		 */
		FUNC0(test_data_two_threads.counter == i * 2 + thread_id,
		       "Counter got damaged!\n");
		test_data_two_threads.counter++;

		/* Kick off the other thread */
		ret = FUNC4(timeline, 1);
		FUNC0(ret == 0, "Advancing timeline failed\n");

		FUNC2(fence);
	}

	return 0;
}