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
typedef  union pipe {int dummy; } pipe ;
struct TYPE_3__ {int ebb_count; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__ ebb_state ; 
 int FUNC8 (union pipe) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 
 int FUNC10 (union pipe) ; 

__attribute__((used)) static int FUNC11(union pipe read_pipe, union pipe write_pipe)
{
	FUNC0(FUNC10(read_pipe));

	/* Setup our EBB handler, before the EBB event is created */
	FUNC4(1);
	FUNC9(standard_ebb_callee);
	FUNC7();

	FUNC0(FUNC8(write_pipe));

	while (ebb_state.stats.ebb_count < 20) {
		FUNC0(FUNC1());
	}

	FUNC6();
	FUNC5();

	FUNC2(1, sample_period);

	FUNC3();

	FUNC0(ebb_state.stats.ebb_count == 0);

	return 0;
}