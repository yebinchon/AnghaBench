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
struct inc_thread_test_data {long long reps; scalar_t__ reg; struct inc_test_data* data; } ;
struct inc_test_data {TYPE_1__* c; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  nr_abort ; 
 int /*<<< orphan*/  opt_disable_rseq ; 
 int /*<<< orphan*/  FUNC2 (char*,int,long long,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  signals_delivered ; 

void *FUNC8(void *arg)
{
	struct inc_thread_test_data *thread_data = arg;
	struct inc_test_data *data = thread_data->data;
	long long i, reps;

	if (!opt_disable_rseq && thread_data->reg &&
	    FUNC5())
		FUNC0();
	reps = thread_data->reps;
	for (i = 0; i < reps; i++) {
		int ret;

		do {
			int cpu;

			cpu = FUNC4();
			ret = FUNC3(&data->c[cpu].count, 1, cpu);
		} while (FUNC6(ret));
#ifndef BENCHMARK
		if (i != 0 && !(i % (reps / 10)))
			FUNC2("tid %d: count %lld\n", (int) FUNC1(), i);
#endif
	}
	FUNC2("tid %d: number of rseq abort: %d, signals delivered: %u\n",
		       (int) FUNC1(), nr_abort, signals_delivered);
	if (!opt_disable_rseq && thread_data->reg &&
	    FUNC7())
		FUNC0();
	return NULL;
}