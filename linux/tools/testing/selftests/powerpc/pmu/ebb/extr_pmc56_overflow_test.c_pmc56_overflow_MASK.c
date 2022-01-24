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
 int /*<<< orphan*/  SPRN_PMC2 ; 
 int /*<<< orphan*/  SPRN_PMC5 ; 
 int /*<<< orphan*/  SPRN_PMC6 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ebb_callee ; 
 int FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC10 (struct event*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct event*) ; 
 int FUNC13 (struct event*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pmc56_overflowed ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(void)
{
	struct event event;

	FUNC1(!FUNC9());

	/* Use PMC2 so we set PMCjCE, which enables PMC5/6 */
	FUNC11(&event, 0x2001e);
	FUNC12(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC13(&event));

	FUNC17(ebb_callee);
	FUNC8();

	FUNC0(FUNC5(&event));

	FUNC14(SPRN_PMC2, FUNC15(sample_period));
	FUNC14(SPRN_PMC5, 0);
	FUNC14(SPRN_PMC6, 0);

	while (ebb_state.stats.ebb_count < 10)
		FUNC0(FUNC2());

	FUNC7();
	FUNC6();

	FUNC3(2, sample_period);

	FUNC4();

	FUNC16("PMC5/6 overflow %d\n", pmc56_overflowed);

	FUNC10(&event);

	FUNC0(ebb_state.stats.ebb_count == 0 || pmc56_overflowed != 0);

	return 0;
}