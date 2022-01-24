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
struct event {int dummy; } ;
struct TYPE_3__ {int ebb_count; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_EBBHR ; 
 int /*<<< orphan*/  SPRN_EBBRR ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_2__ ebb_state ; 
 int /*<<< orphan*/  FUNC9 (struct event*) ; 
 int /*<<< orphan*/  FUNC10 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*) ; 
 int FUNC12 (struct event*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 
 int /*<<< orphan*/  write_pmc1 ; 

int FUNC17(void)
{
	struct event event;

	FUNC1(!FUNC8());

	FUNC10(&event, 0x1001e, "cycles");
	FUNC11(&event);

	FUNC0(FUNC12(&event));

	FUNC4(1);
	FUNC16(standard_ebb_callee);
	FUNC7();
	FUNC0(FUNC5(&event));

	FUNC14(SPRN_PMC1, FUNC15(sample_period));

	while (ebb_state.stats.ebb_count < 1)
		FUNC0(FUNC3());

	FUNC6();
	FUNC9(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);

	/* The real test is here, do we take a SIGILL when writing PMU regs now
	 * that we have closed the event. We expect that we will. */

	FUNC0(FUNC2(write_pmc1));

	/* We should still be able to read EBB regs though */
	FUNC13(SPRN_EBBHR);
	FUNC13(SPRN_EBBRR);
	FUNC13(SPRN_BESCR);

	return 0;
}