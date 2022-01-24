#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ running; scalar_t__ enabled; scalar_t__ value; } ;
struct TYPE_3__ {int disabled; int exclude_user; int exclude_hv; int exclude_kernel; } ;
struct event {TYPE_2__ result; int /*<<< orphan*/  fd; TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_BASE_PLATFORM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  PERF_COUNT_HW_INSTRUCTIONS ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 int /*<<< orphan*/  PR_TASK_PERF_EVENTS_DISABLE ; 
 int /*<<< orphan*/  PR_TASK_PERF_EVENTS_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct event*) ; 
 int FUNC5 (struct event*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 (struct event*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct event *e, events[4];
	char *platform;
	int i;

	platform = (char *)FUNC8(AT_BASE_PLATFORM);
	FUNC0(!platform);
	FUNC1(FUNC10(platform, "power8") != 0);

	/*
	 * We need to create the events disabled, otherwise the running/enabled
	 * counts don't match up.
	 */
	e = &events[0];
	FUNC3(e, PERF_COUNT_HW_INSTRUCTIONS,
			PERF_TYPE_HARDWARE, "instructions");
	e->attr.disabled = 1;

	e = &events[1];
	FUNC3(e, PERF_COUNT_HW_INSTRUCTIONS,
			PERF_TYPE_HARDWARE, "instructions(k)");
	e->attr.disabled = 1;
	e->attr.exclude_user = 1;
	e->attr.exclude_hv = 1;

	e = &events[2];
	FUNC3(e, PERF_COUNT_HW_INSTRUCTIONS,
			PERF_TYPE_HARDWARE, "instructions(h)");
	e->attr.disabled = 1;
	e->attr.exclude_user = 1;
	e->attr.exclude_kernel = 1;

	e = &events[3];
	FUNC3(e, PERF_COUNT_HW_INSTRUCTIONS,
			PERF_TYPE_HARDWARE, "instructions(u)");
	e->attr.disabled = 1;
	e->attr.exclude_hv = 1;
	e->attr.exclude_kernel = 1;

	FUNC0(FUNC4(&events[0]));

	/*
	 * The open here will fail if we don't have per event exclude support,
	 * because the second event has an incompatible set of exclude settings
	 * and we're asking for the events to be in a group.
	 */
	for (i = 1; i < 4; i++)
		FUNC0(FUNC5(&events[i], events[0].fd));

	/*
	 * Even though the above will fail without per-event excludes we keep
	 * testing in order to be thorough.
	 */
	FUNC9(PR_TASK_PERF_EVENTS_ENABLE);

	/* Spin for a while */
	for (i = 0; i < INT_MAX; i++)
		asm volatile("" : : : "memory");

	FUNC9(PR_TASK_PERF_EVENTS_DISABLE);

	for (i = 0; i < 4; i++) {
		FUNC0(FUNC6(&events[i]));
		FUNC7(&events[i]);
	}

	/*
	 * We should see that all events have enabled == running. That
	 * shows that they were all on the PMU at once.
	 */
	for (i = 0; i < 4; i++)
		FUNC0(events[i].result.running != events[i].result.enabled);

	/*
	 * We can also check that the result for instructions is >= all the
	 * other counts. That's because it is counting all instructions while
	 * the others are counting a subset.
	 */
	for (i = 1; i < 4; i++)
		FUNC0(events[0].result.value < events[i].result.value);

	for (i = 0; i < 4; i++)
		FUNC2(&events[i]);

	return 0;
}