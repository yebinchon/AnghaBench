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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPGPATH ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* bindir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int postmaster_running ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  temp_instance ; 

__attribute__((used)) static void
FUNC6(void)
{
	if (postmaster_running)
	{
		/* We use pg_ctl to issue the kill and wait for stop */
		char		buf[MAXPGPATH * 2];
		int			r;

		/* On Windows, system() seems not to force fflush, so... */
		FUNC2(stdout);
		FUNC2(stderr);

		FUNC4(buf, sizeof(buf),
				 "\"%s%spg_ctl\" stop -D \"%s/data\" -s",
				 bindir ? bindir : "",
				 bindir ? "/" : "",
				 temp_instance);
		r = FUNC5(buf);
		if (r != 0)
		{
			FUNC3(stderr, FUNC0("\n%s: could not stop postmaster: exit code was %d\n"),
					progname, r);
			FUNC1(2);			/* not exit(), that could be recursive */
		}

		postmaster_running = false;
	}
}