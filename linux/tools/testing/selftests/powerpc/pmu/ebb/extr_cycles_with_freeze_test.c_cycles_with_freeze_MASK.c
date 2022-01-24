#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MMCR0_FC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int counters_frozen ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ebb_callee ; 
 int FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_3__ ebb_state ; 
 int ebbs_while_frozen ; 
 int /*<<< orphan*/  FUNC10 (struct event*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct event*) ; 
 int FUNC13 (struct event*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(void)
{
	struct event event;
	uint64_t val;
	bool fc_cleared;

	FUNC1(!FUNC9());

	FUNC11(&event, 0x1001e, "cycles");
	FUNC12(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC13(&event));

	FUNC19(ebb_callee);
	FUNC8();
	FUNC0(FUNC5(&event));

	FUNC16(SPRN_PMC1, FUNC17(sample_period));

	fc_cleared = false;

	/* Make sure we loop until we take at least one EBB */
	while ((ebb_state.stats.ebb_count < 20 && !fc_cleared) ||
		ebb_state.stats.ebb_count < 1)
	{
		counters_frozen = false;
		FUNC14();
		FUNC16(SPRN_MMCR0, FUNC15(SPRN_MMCR0) & ~MMCR0_FC);

		FUNC0(FUNC2());

		counters_frozen = true;
		FUNC14();
		FUNC16(SPRN_MMCR0, FUNC15(SPRN_MMCR0) |  MMCR0_FC);

		val = FUNC15(SPRN_MMCR0);
		if (! (val & MMCR0_FC)) {
			FUNC18("Outside of loop, FC NOT set MMCR0 0x%lx\n", val);
			fc_cleared = true;
		}
	}

	FUNC7();
	FUNC6();

	FUNC3(1, sample_period);

	FUNC4();

	FUNC18("EBBs while frozen %d\n", ebbs_while_frozen);

	FUNC10(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);
	FUNC0(fc_cleared);

	return 0;
}