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
 int /*<<< orphan*/  SPRN_PMC4 ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct event*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC12 (struct event*) ; 
 int /*<<< orphan*/  FUNC13 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct event*) ; 
 int FUNC15 (struct event*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int) ; 
 int sample_period ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 

__attribute__((used)) static int FUNC20(void)
{
	int i, orig_period, max_period;
	struct event event;

	FUNC1(!FUNC11());

	/* We use PMC4 to make sure the kernel switches all counters correctly */
	FUNC13(&event, 0x40002, "instructions");
	FUNC14(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC15(&event));

	FUNC6(4);
	FUNC19(standard_ebb_callee);
	FUNC10();
	FUNC0(FUNC7(&event));

	/*
	 * We want a low sample period, but we also want to get out of the EBB
	 * handler without tripping up again.
	 *
	 * This value picked after much experimentation.
	 */
	orig_period = max_period = sample_period = 400;

	FUNC16(SPRN_PMC4, FUNC17(sample_period));

	while (ebb_state.stats.ebb_count < 1000000) {
		/*
		 * We are trying to get the EBB exception to race exactly with
		 * us entering the kernel to do the syscall. We then need the
		 * kernel to decide our timeslice is up and context switch to
		 * the other thread. When we come back our EBB will have been
		 * lost and we'll spin in this while loop forever.
		 */

		for (i = 0; i < 100000; i++)
			FUNC18();

		/* Change the sample period slightly to try and hit the race */
		if (sample_period >= (orig_period + 200))
			sample_period = orig_period;
		else
			sample_period++;

		if (sample_period > max_period)
			max_period = sample_period;
	}

	FUNC8();
	FUNC9();

	FUNC2(4, sample_period);
	FUNC16(SPRN_PMC4, 0xdead);

	FUNC4();
	FUNC3();

	FUNC12(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);

	/* We vary our sample period so we need extra fudge here */
	FUNC0(!FUNC5(4, orig_period, 2 * (max_period - orig_period)));

	return 0;
}