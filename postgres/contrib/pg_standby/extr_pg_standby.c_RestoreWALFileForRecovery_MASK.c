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
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int maxretries ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  restoreCommand ; 
 long sleeptime ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(void)
{
	int			rc = 0;
	int			numretries = 0;

	if (debug)
	{
		FUNC1(stderr, "running restore:      ");
		FUNC0(stderr);
	}

	while (numretries <= maxretries)
	{
		rc = FUNC3(restoreCommand);
		if (rc == 0)
		{
			if (debug)
			{
				FUNC1(stderr, "OK\n");
				FUNC0(stderr);
			}
			return true;
		}
		FUNC2(numretries++ * sleeptime * 1000000L);
	}

	/*
	 * Allow caller to add additional info
	 */
	if (debug)
		FUNC1(stderr, "not restored\n");
	return false;
}