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
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 

char *
FUNC8(int exitstatus)
{
	char		str[512];

	if (FUNC1(exitstatus))
	{
		/*
		 * Give more specific error message for some common exit codes that
		 * have a special meaning in shells.
		 */
		switch (FUNC0(exitstatus))
		{
			case 126:
				FUNC7(str, sizeof(str), FUNC4("command not executable"));
				break;

			case 127:
				FUNC7(str, sizeof(str), FUNC4("command not found"));
				break;

			default:
				FUNC7(str, sizeof(str),
						 FUNC4("child process exited with exit code %d"),
						 FUNC0(exitstatus));
		}
	}
	else if (FUNC2(exitstatus))
	{
#if defined(WIN32)
		snprintf(str, sizeof(str),
				 _("child process was terminated by exception 0x%X"),
				 WTERMSIG(exitstatus));
#else
		FUNC7(str, sizeof(str),
				 FUNC4("child process was terminated by signal %d: %s"),
				 FUNC3(exitstatus), FUNC5(FUNC3(exitstatus)));
#endif
	}
	else
		FUNC7(str, sizeof(str),
				 FUNC4("child process exited with unrecognized status %d"),
				 exitstatus);

	return FUNC6(str);
}