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
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MMCR2_EXPECTED_1 ; 
 scalar_t__ MMCR2_EXPECTED_2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_MMCR2 ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC11 (struct event*) ; 
 int /*<<< orphan*/  FUNC12 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct event*) ; 
 int FUNC14 (struct event*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 

int FUNC20(void)
{
	struct event event;
	uint64_t val, expected[2], actual;
	int i;
	bool bad_mmcr2;

	FUNC1(!FUNC10());

	FUNC12(&event, 0x1001e, "cycles");
	FUNC13(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC14(&event));

	FUNC5(1);
	FUNC19(standard_ebb_callee);
	FUNC9();

	FUNC0(FUNC6(&event));

	FUNC16(SPRN_PMC1, FUNC17(sample_period));

	/* XXX Set of MMCR2 must be after enable */
	expected[0] = MMCR2_EXPECTED_1;
	expected[1] = MMCR2_EXPECTED_2;
	i = 0;
	bad_mmcr2 = false;

	/* Make sure we loop until we take at least one EBB */
	while ((ebb_state.stats.ebb_count < 20 && !bad_mmcr2) ||
		ebb_state.stats.ebb_count < 1)
	{
		FUNC16(SPRN_MMCR2, expected[i % 2]);

		FUNC0(FUNC2());

		val = FUNC15(SPRN_MMCR2);
		if (val != expected[i % 2]) {
			bad_mmcr2 = true;
			actual = val;
		}

		i++;
	}

	FUNC8();
	FUNC7();

	FUNC3(1, sample_period);

	FUNC4();

	FUNC11(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);

	if (bad_mmcr2)
		FUNC18("Bad MMCR2 value seen is 0x%lx\n", actual);

	FUNC0(bad_mmcr2);

	return 0;
}