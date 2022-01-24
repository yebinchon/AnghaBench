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
struct TYPE_2__ {int* producer_timelines; int consumer_timeline; int iterations; int /*<<< orphan*/  lock; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int,int) ; 
 TYPE_1__ test_data_mpsc ; 

__attribute__((used)) static int FUNC9(void *d)
{
	int id = (long)d;
	int fence, valid, i;
	int *producer_timelines = test_data_mpsc.producer_timelines;
	int consumer_timeline = test_data_mpsc.consumer_timeline;
	int iterations = test_data_mpsc.iterations;

	for (i = 0; i < iterations; i++) {
		fence = FUNC4(consumer_timeline, "fence", i);
		valid = FUNC6(fence);
		FUNC0(valid, "Failure creating fence\n");

		/*
		 * Wait for the consumer to finish. Use alternate
		 * means of waiting on the fence
		 */

		if ((iterations + id) % 8 != 0) {
			FUNC0(FUNC8(fence, -1) > 0,
			       "Failure waiting on fence\n");
		} else {
			FUNC0(FUNC1(fence) == 0,
			       "Failure waiting on fence\n");
		}

		/*
		 * Every producer increments the counter, the consumer
		 * checks and erases it
		 */
		FUNC2(&test_data_mpsc.lock);
		test_data_mpsc.counter++;
		FUNC3(&test_data_mpsc.lock);

		FUNC0(FUNC7(producer_timelines[id], 1) == 0,
		       "Error advancing producer timeline\n");

		FUNC5(fence);
	}

	return 0;
}