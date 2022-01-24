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
typedef  int /*<<< orphan*/  u64 ;
struct event {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERF_COUNT_HW_CPU_CYCLES ; 
 int /*<<< orphan*/  PERF_COUNT_HW_INSTRUCTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct event*) ; 
 scalar_t__ FUNC4 (struct event*) ; 
 scalar_t__ FUNC5 (struct event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct event*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(void)
{
	struct event events[2];
	u64 overhead;

	FUNC8(&events[0], PERF_COUNT_HW_INSTRUCTIONS, "instructions");
	FUNC8(&events[1], PERF_COUNT_HW_CPU_CYCLES, "cycles");

	if (FUNC4(&events[0])) {
		FUNC6("perf_event_open");
		return -1;
	}

	if (FUNC5(&events[1], events[0].fd)) {
		FUNC6("perf_event_open");
		return -1;
	}

	overhead = FUNC1(events);
	FUNC7("Overhead of null loop: %llu instructions\n", overhead);

	/* Run for 1Mi instructions */
	FUNC0(FUNC2(events, 1000000, overhead, true));

	/* Run for 10Mi instructions */
	FUNC0(FUNC2(events, 10000000, overhead, true));

	/* Run for 100Mi instructions */
	FUNC0(FUNC2(events, 100000000, overhead, true));

	/* Run for 1Bi instructions */
	FUNC0(FUNC2(events, 1000000000, overhead, true));

	/* Run for 16Bi instructions */
	FUNC0(FUNC2(events, 16000000000, overhead, true));

	/* Run for 64Bi instructions */
	FUNC0(FUNC2(events, 64000000000, overhead, true));

	FUNC3(&events[0]);
	FUNC3(&events[1]);

	return 0;
}