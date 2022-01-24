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
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct event*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC13 (struct event*) ; 
 int /*<<< orphan*/  FUNC14 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct event*) ; 
 int FUNC16 (struct event*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 

int FUNC20(void)
{
	struct event event;

	FUNC1(!FUNC12());

	FUNC14(&event, 0x1001e, "cycles");
	FUNC15(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC16(&event));

	FUNC7(1);
	FUNC19(standard_ebb_callee);
	FUNC11();
	FUNC0(FUNC8(&event));

	FUNC17(SPRN_PMC1, FUNC18(sample_period));

	while (ebb_state.stats.ebb_count < 10) {
		FUNC0(FUNC2());
		FUNC0(FUNC6());
	}

	FUNC10();
	FUNC9();

	FUNC3(1, sample_period);

	FUNC4();

	FUNC13(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);
	FUNC0(!FUNC5(1, sample_period, 100));

	return 0;
}