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
struct TYPE_2__ {int* producer_timelines; int consumer_timeline; int iterations; int threads; int counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (char*,int,int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 TYPE_1__ test_data_mpsc ; 

__attribute__((used)) static int FUNC8(void)
{
	int fence, merged, tmp, valid, it, i;
	int *producer_timelines = test_data_mpsc.producer_timelines;
	int consumer_timeline = test_data_mpsc.consumer_timeline;
	int iterations = test_data_mpsc.iterations;
	int n = test_data_mpsc.threads;

	for (it = 1; it <= iterations; it++) {
		fence = FUNC2(producer_timelines[0], "name", it);
		for (i = 1; i < n; i++) {
			tmp = FUNC2(producer_timelines[i],
						   "name", it);
			merged = FUNC6("name", tmp, fence);
			FUNC3(tmp);
			FUNC3(fence);
			fence = merged;
		}

		valid = FUNC4(fence);
		FUNC0(valid, "Failure merging fences\n");

		/*
		 * Make sure we see an increment from every producer thread.
		 * Vary the means by which we wait.
		 */
		if (iterations % 8 != 0) {
			FUNC0(FUNC7(fence, -1) > 0,
			       "Producers did not increment as expected\n");
		} else {
			FUNC0(FUNC1(fence) == 0,
			       "Producers did not increment as expected\n");
		}

		FUNC0(test_data_mpsc.counter == n * it,
		       "Counter value mismatch!\n");

		/* Release the producer threads */
		FUNC0(FUNC5(consumer_timeline, 1) == 0,
		       "Failure releasing producer threads\n");

		FUNC3(fence);
	}

	return 0;
}