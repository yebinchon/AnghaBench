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
 char* FUNC0 (char*) ; 
 scalar_t__ caught_signal ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_errno ; 
 scalar_t__ output_failed ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	if (caught_signal)
	{
		FUNC3(FUNC0("caught signal\n"));
		FUNC2(stdout);
		FUNC1(1);
	}
	else if (output_failed)
	{
		FUNC3(FUNC0("could not write to child process: %s\n"),
			   FUNC4(output_errno));
		FUNC2(stdout);
		FUNC1(1);
	}
	else
	{
		/* all seems well */
		FUNC3(FUNC0("ok\n"));
		FUNC2(stdout);
	}
}