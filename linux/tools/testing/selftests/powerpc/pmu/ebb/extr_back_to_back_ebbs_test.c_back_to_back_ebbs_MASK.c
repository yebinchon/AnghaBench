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
struct TYPE_5__ {scalar_t__ ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NUMBER_OF_EBBS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ebb_callee ; 
 int FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct event*) ; 
 int /*<<< orphan*/  FUNC12 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct event*) ; 
 int FUNC14 (struct event*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int sample_period ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(void)
{
	struct event event;

	FUNC1(!FUNC9());

	FUNC12(&event, 0x1001e, "cycles");
	FUNC13(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC14(&event));

	FUNC17(ebb_callee);

	FUNC0(FUNC5(&event));

	sample_period = 5;

	FUNC6();
	FUNC15(SPRN_PMC1, FUNC16(sample_period));
	FUNC8();
	FUNC10();

	while (ebb_state.stats.ebb_count < NUMBER_OF_EBBS)
		FUNC0(FUNC2());

	FUNC7();
	FUNC6();

	FUNC3(1, sample_period);

	FUNC4();

	FUNC11(&event);

	FUNC0(ebb_state.stats.ebb_count != NUMBER_OF_EBBS);

	return 0;
}