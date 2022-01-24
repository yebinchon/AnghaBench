#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMCR0_FC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  standard_ebb_callee ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

int FUNC17(void)
{
	pid_t pid;

	FUNC1(!FUNC6());

	FUNC8(&event, 0x1001e, "cycles");
	FUNC9(&event);

	FUNC0(FUNC10(&event));

	FUNC3(1);
	FUNC15(standard_ebb_callee);
	FUNC5();

	FUNC0(FUNC4(&event));

	FUNC13(SPRN_MMCR0, MMCR0_FC);
	FUNC13(SPRN_PMC1, FUNC14(sample_period));

	/* Don't need to actually take any EBBs */

	pid = FUNC12();
	if (pid == 0)
		FUNC11(FUNC2());

	/* Child does the actual testing */
	FUNC0(FUNC16(pid));

	/* After fork */
	FUNC7(&event);

	return 0;
}