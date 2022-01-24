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
typedef  union pipe {int dummy; } pipe ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_MMCR2 ; 
 int /*<<< orphan*/  SPRN_MMCRA ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__ ebb_state ; 
 int /*<<< orphan*/  FUNC8 (struct event*) ; 
 int FUNC9 (struct event*) ; 
 int /*<<< orphan*/  FUNC10 (struct event*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct event*) ; 
 int FUNC12 (struct event*) ; 
 scalar_t__ FUNC13 (struct event*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (union pipe) ; 
 int /*<<< orphan*/  FUNC17 (union pipe) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 
 int FUNC20 (union pipe) ; 

int FUNC21(union pipe read_pipe, union pipe write_pipe)
{
	struct event event;
	uint64_t val;

	FUNC0(FUNC20(read_pipe));

	FUNC10(&event, 0x1001e, "cycles");
	FUNC11(&event);

	event.attr.exclude_kernel = 1;
	event.attr.exclude_hv = 1;
	event.attr.exclude_idle = 1;

	FUNC0(FUNC12(&event));

	FUNC4(1);
	FUNC19(standard_ebb_callee);
	FUNC7();

	FUNC0(FUNC9(&event));

	if (FUNC13(&event)) {
		/*
		 * Some tests expect to fail here, so don't report an error on
		 * this line, and return a distinguisable error code. Tell the
		 * parent an error happened.
		 */
		FUNC17(write_pipe);
		return 2;
	}

	FUNC15(SPRN_PMC1, FUNC18(sample_period));

	FUNC0(FUNC16(write_pipe));
	FUNC0(FUNC20(read_pipe));
	FUNC0(FUNC16(write_pipe));

	while (ebb_state.stats.ebb_count < 20) {
		FUNC0(FUNC1());

		/* To try and hit SIGILL case */
		val  = FUNC14(SPRN_MMCRA);
		val |= FUNC14(SPRN_MMCR2);
		val |= FUNC14(SPRN_MMCR0);
	}

	FUNC6();
	FUNC5();

	FUNC2(1, sample_period);

	FUNC3();

	FUNC8(&event);

	FUNC0(ebb_state.stats.ebb_count == 0);

	return 0;
}