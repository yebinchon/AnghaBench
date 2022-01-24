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
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ pgpid_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  postopts_file ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** FUNC7 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	pgpid_t		pid;

	pid = FUNC3(true);
	/* Is there a pid file? */
	if (pid != 0)
	{
		/* standalone backend? */
		if (pid < 0)
		{
			pid = -pid;
			if (FUNC4((pid_t) pid))
			{
				FUNC5(FUNC0("%s: single-user server is running (PID: %ld)\n"),
					   progname, pid);
				return;
			}
		}
		else
			/* must be a postmaster */
		{
			if (FUNC4((pid_t) pid))
			{
				char	  **optlines;
				char	  **curr_line;
				int			numlines;

				FUNC5(FUNC0("%s: server is running (PID: %ld)\n"),
					   progname, pid);

				optlines = FUNC7(postopts_file, &numlines);
				if (optlines != NULL)
				{
					for (curr_line = optlines; *curr_line != NULL; curr_line++)
						FUNC6(*curr_line);

					/* Free the results of readfile */
					FUNC2(optlines);
				}
				return;
			}
		}
	}
	FUNC5(FUNC0("%s: no server running\n"), progname);

	/*
	 * The Linux Standard Base Core Specification 3.1 says this should return
	 * '3, program is not running'
	 * https://refspecs.linuxbase.org/LSB_3.1.0/LSB-Core-generic/LSB-Core-generic/iniscrptact.html
	 */
	FUNC1(3);
}