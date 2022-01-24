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
struct TYPE_2__ {int* producer_timelines; int consumer_timeline; int iterations; int threads; int /*<<< orphan*/  lock; scalar_t__ counter; } ;

/* Variables and functions */
 long FUNC0 () ; 
 scalar_t__ mpsc_producer_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 TYPE_1__ test_data_mpsc ; 

int FUNC5(void)
{
	int iterations = 1 << 12;
	int n = 5;
	long i, ret;
	int producer_timelines[n];
	int consumer_timeline;
	pthread_t threads[n];

	consumer_timeline = FUNC4();
	for (i = 0; i < n; i++)
		producer_timelines[i] = FUNC4();

	test_data_mpsc.producer_timelines = producer_timelines;
	test_data_mpsc.consumer_timeline = consumer_timeline;
	test_data_mpsc.iterations = iterations;
	test_data_mpsc.threads = n;
	test_data_mpsc.counter = 0;
	FUNC3(&test_data_mpsc.lock, NULL);

	for (i = 0; i < n; i++) {
		FUNC1(&threads[i], NULL, (void * (*)(void *))
			       mpsc_producer_thread, (void *)i);
	}

	/* Consumer thread runs here */
	ret = FUNC0();

	for (i = 0; i < n; i++)
		FUNC2(threads[i], NULL);

	return ret;
}