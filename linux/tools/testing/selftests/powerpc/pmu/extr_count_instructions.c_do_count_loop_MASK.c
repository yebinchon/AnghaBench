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
typedef  int u64 ;
struct TYPE_2__ {int value; } ;
struct event {TYPE_1__ result; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  PR_TASK_PERF_EVENTS_DISABLE ; 
 int /*<<< orphan*/  PR_TASK_PERF_EVENTS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct event*) ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct event *events, u64 instructions,
			 u64 overhead, bool report)
{
	s64 difference, expected;
	double percentage;

	FUNC3(PR_TASK_PERF_EVENTS_ENABLE);

	/* Run for 1M instructions */
	FUNC5(instructions >> 5);

	FUNC3(PR_TASK_PERF_EVENTS_DISABLE);

	FUNC0(&events[0]);
	FUNC0(&events[1]);

	expected = instructions + overhead;
	difference = events[0].result.value - expected;
	percentage = (double)difference / events[0].result.value * 100;

	if (report) {
		FUNC1(&events[0]);
		FUNC1(&events[1]);

		FUNC4("Looped for %llu instructions, overhead %llu\n", instructions, overhead);
		FUNC4("Expected %llu\n", expected);
		FUNC4("Actual   %llu\n", events[0].result.value);
		FUNC4("Delta    %lld, %f%%\n", difference, percentage);
	}

	FUNC2(&events[0]);
	FUNC2(&events[1]);

	if (difference < 0)
		difference = -difference;

	/* Tolerate a difference below 0.0001 % */
	difference *= 10000 * 100;
	if (difference / events[0].result.value)
		return -1;

	return 0;
}