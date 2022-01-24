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
 scalar_t__ RESTART_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ctl_command ; 
 int /*<<< orphan*/ * exec_path ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 void* FUNC3 (char*) ; 
 char* post_opts ; 
 int /*<<< orphan*/  postopts_file ; 
 int /*<<< orphan*/  progname ; 
 char** FUNC4 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	if (post_opts == NULL)
	{
		post_opts = "";			/* default */
		if (ctl_command == RESTART_COMMAND)
		{
			char	  **optlines;
			int			numlines;

			optlines = FUNC4(postopts_file, &numlines);
			if (optlines == NULL)
			{
				FUNC6(FUNC0("%s: could not read file \"%s\"\n"), progname, postopts_file);
				FUNC1(1);
			}
			else if (numlines != 1)
			{
				FUNC6(FUNC0("%s: option file \"%s\" must have exactly one line\n"),
							 progname, postopts_file);
				FUNC1(1);
			}
			else
			{
				char	   *optline;
				char	   *arg1;

				optline = optlines[0];

				/*
				 * Are we at the first option, as defined by space and
				 * double-quote?
				 */
				if ((arg1 = FUNC5(optline, " \"")) != NULL)
				{
					*arg1 = '\0';	/* terminate so we get only program name */
					post_opts = FUNC3(arg1 + 1);	/* point past whitespace */
				}
				if (exec_path == NULL)
					exec_path = FUNC3(optline);
			}

			/* Free the results of readfile. */
			FUNC2(optlines);
		}
	}
}