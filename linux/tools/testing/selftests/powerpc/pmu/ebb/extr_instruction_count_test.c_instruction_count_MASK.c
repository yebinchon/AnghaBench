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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MMCR0_FC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct event*) ; 
 int /*<<< orphan*/  FUNC9 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct event*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pmc4_ebb_callee ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(void)
{
	struct event event;
	uint64_t overhead;

	FUNC1(!FUNC7());

	FUNC9(&event, 0x400FA, "PM_RUN_INST_CMPL");
	FUNC10(&event);
	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC11(&event));
	FUNC0(FUNC4(&event));

	sample_period = COUNTER_OVERFLOW;

	FUNC15(pmc4_ebb_callee);
	FUNC13(SPRN_MMCR0, FUNC12(SPRN_MMCR0) & ~MMCR0_FC);
	FUNC6();

	overhead = FUNC2(&event);
	FUNC14("Overhead of null loop: %lu instructions\n", overhead);

	/* Run for 1M instructions */
	FUNC0(FUNC3(&event, 0x100000, overhead, true));

	/* Run for 10M instructions */
	FUNC0(FUNC3(&event, 0xa00000, overhead, true));

	/* Run for 100M instructions */
	FUNC0(FUNC3(&event, 0x6400000, overhead, true));

	/* Run for 1G instructions */
	FUNC0(FUNC3(&event, 0x40000000, overhead, true));

	/* Run for 16G instructions */
	FUNC0(FUNC3(&event, 0x400000000, overhead, true));

	/* Run for 64G instructions */
	FUNC0(FUNC3(&event, 0x1000000000, overhead, true));

	/* Run for 128G instructions */
	FUNC0(FUNC3(&event, 0x2000000000, overhead, true));

	FUNC5();
	FUNC8(&event);

	FUNC14("Finished OK\n");

	return 0;
}