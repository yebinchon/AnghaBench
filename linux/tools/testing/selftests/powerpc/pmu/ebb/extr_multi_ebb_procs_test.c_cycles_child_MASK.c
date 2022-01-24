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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int /*<<< orphan*/  child_should_exit ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct event*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC10 (struct event*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct event*) ; 
 int FUNC13 (struct event*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigint_action ; 
 int /*<<< orphan*/  standard_ebb_callee ; 

__attribute__((used)) static int FUNC19(void)
{
	struct event event;

	if (FUNC18(SIGINT, &sigint_action, NULL)) {
		FUNC15("sigaction");
		return 1;
	}

	FUNC11(&event, 0x1001e, "cycles");
	FUNC12(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC13(&event));

	FUNC5(1);
	FUNC17(standard_ebb_callee);
	FUNC9();

	FUNC0(FUNC6(&event));

	FUNC14(SPRN_PMC1, FUNC16(sample_period));

	while (!child_should_exit) {
		FUNC0(FUNC1());
		FUNC0(FUNC4());
	}

	FUNC8();
	FUNC7();

	FUNC2(1, sample_period);

	FUNC3();

	FUNC10(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);

	return 0;
}