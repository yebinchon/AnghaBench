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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
	int n_tasks = 100, i;

	FUNC2(stderr, "[No further output means we're allright]\n");

	for (i=0; i<n_tasks; i++)
		if (FUNC1() == 0)
		{
			if (i & 1)
				FUNC4();
			else
				FUNC3();
		}

	for (i=0; i<n_tasks; i++)
		FUNC5(NULL);

	FUNC0(0);
}