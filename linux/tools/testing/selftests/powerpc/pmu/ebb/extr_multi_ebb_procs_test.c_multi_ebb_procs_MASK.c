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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NR_CHILDREN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 

int FUNC11(void)
{
	pid_t pids[NR_CHILDREN];
	int cpu, rc, i;

	FUNC1(!FUNC4());

	cpu = FUNC8();
	FUNC0(cpu < 0);
	FUNC0(FUNC2(cpu));

	for (i = 0; i < NR_CHILDREN; i++) {
		pids[i] = FUNC6();
		if (pids[i] == 0)
			FUNC5(FUNC3());
	}

	/* Have them all run for "a while" */
	FUNC9(10);

	rc = 0;
	for (i = 0; i < NR_CHILDREN; i++) {
		/* Tell them to stop */
		FUNC7(pids[i], SIGINT);
		/* And wait */
		rc |= FUNC10(pids[i]);
	}

	return rc;
}