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
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {int fd; TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_IOC_FLAG_GROUP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int /*<<< orphan*/  SPRN_PMC2 ; 
 int /*<<< orphan*/  SPRN_PMC3 ; 
 int /*<<< orphan*/  SPRN_PMC4 ; 
 int /*<<< orphan*/  SPRN_PMC5 ; 
 int /*<<< orphan*/  SPRN_PMC6 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC11 (struct event*) ; 
 int /*<<< orphan*/  FUNC12 (struct event*) ; 
 int /*<<< orphan*/  FUNC13 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct event*) ; 
 int FUNC15 (struct event*,int) ; 
 int FUNC16 (struct event*) ; 
 int FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 

int FUNC21(void)
{
	struct event events[6];
	int i, group_fd;

	FUNC1(!FUNC10());

	FUNC13(&events[0], 0x1001C, "PM_CMPLU_STALL_THRD");
	FUNC13(&events[1], 0x2D016, "PM_CMPLU_STALL_FXU");
	FUNC13(&events[2], 0x30006, "PM_CMPLU_STALL_OTHER_CMPL");
	FUNC13(&events[3], 0x4000A, "PM_CMPLU_STALL");
	FUNC13(&events[4], 0x600f4, "PM_RUN_CYC");
	FUNC13(&events[5], 0x500fa, "PM_RUN_INST_CMPL");

	FUNC14(&events[0]);
	for (i = 1; i < 6; i++)
		FUNC12(&events[i]);

	group_fd = -1;
	for (i = 0; i < 6; i++) {
		events[i].attr.exclude_kernel = 1;
		events[i].attr.exclude_hv = 1;
		events[i].attr.exclude_idle = 1;

		FUNC0(FUNC15(&events[i], group_fd));
		if (group_fd == -1)
			group_fd = events[0].fd;
	}

	FUNC6(1);
	FUNC6(2);
	FUNC6(3);
	FUNC6(4);
	FUNC6(5);
	FUNC6(6);
	FUNC20(standard_ebb_callee);

	FUNC0(FUNC17(events[0].fd, PERF_EVENT_IOC_ENABLE, PERF_IOC_FLAG_GROUP));
	FUNC0(FUNC16(&events[0]));

	FUNC9();

	FUNC18(SPRN_PMC1, FUNC19(sample_period));
	FUNC18(SPRN_PMC2, FUNC19(sample_period));
	FUNC18(SPRN_PMC3, FUNC19(sample_period));
	FUNC18(SPRN_PMC4, FUNC19(sample_period));
	FUNC18(SPRN_PMC5, FUNC19(sample_period));
	FUNC18(SPRN_PMC6, FUNC19(sample_period));

	while (ebb_state.stats.ebb_count < 50) {
		FUNC0(FUNC2());
		FUNC0(FUNC5());
	}

	FUNC8();
	FUNC7();

	FUNC3(1, sample_period);
	FUNC3(2, sample_period);
	FUNC3(3, sample_period);
	FUNC3(4, sample_period);
	FUNC3(5, sample_period);
	FUNC3(6, sample_period);

	FUNC4();

	for (i = 0; i < 6; i++)
		FUNC11(&events[i]);

	FUNC0(ebb_state.stats.ebb_count == 0);

	return 0;
}