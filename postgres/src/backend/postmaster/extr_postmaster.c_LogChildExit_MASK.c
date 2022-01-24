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
typedef  int /*<<< orphan*/  activity_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* FUNC10 (int,char*,int) ; 

__attribute__((used)) static void
FUNC11(int lev, const char *procname, int pid, int exitstatus)
{
	/*
	 * size of activity_buffer is arbitrary, but set equal to default
	 * track_activity_query_size
	 */
	char		activity_buffer[1024];
	const char *activity = NULL;

	if (!FUNC0(exitstatus))
		activity = FUNC10(pid,
													   activity_buffer,
													   sizeof(activity_buffer));

	if (FUNC2(exitstatus))
		FUNC5(lev,

		/*------
		  translator: %s is a noun phrase describing a child process, such as
		  "server process" */
				(FUNC8("%s (PID %d) exited with exit code %d",
						procname, pid, FUNC1(exitstatus)),
				 activity ? FUNC6("Failed process was running: %s", activity) : 0));
	else if (FUNC3(exitstatus))
	{
#if defined(WIN32)
		ereport(lev,

		/*------
		  translator: %s is a noun phrase describing a child process, such as
		  "server process" */
				(errmsg("%s (PID %d) was terminated by exception 0x%X",
						procname, pid, WTERMSIG(exitstatus)),
				 errhint("See C include file \"ntstatus.h\" for a description of the hexadecimal value."),
				 activity ? errdetail("Failed process was running: %s", activity) : 0));
#else
		FUNC5(lev,

		/*------
		  translator: %s is a noun phrase describing a child process, such as
		  "server process" */
				(FUNC8("%s (PID %d) was terminated by signal %d: %s",
						procname, pid, FUNC4(exitstatus),
						FUNC9(FUNC4(exitstatus))),
				 activity ? FUNC6("Failed process was running: %s", activity) : 0));
#endif
	}
	else
		FUNC5(lev,

		/*------
		  translator: %s is a noun phrase describing a child process, such as
		  "server process" */
				(FUNC8("%s (PID %d) exited with unrecognized status %d",
						procname, pid, exitstatus),
				 activity ? FUNC6("Failed process was running: %s", activity) : 0));
}