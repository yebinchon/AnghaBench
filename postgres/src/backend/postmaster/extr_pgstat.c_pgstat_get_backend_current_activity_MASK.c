#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int st_procpid; scalar_t__ st_userid; char* st_activity_raw; } ;
typedef  TYPE_1__ PgBackendStatus ;

/* Variables and functions */
 TYPE_1__* BackendStatusArray ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int MaxBackends ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ volatile*,int) ; 
 char const* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ volatile*,int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

const char *
FUNC7(int pid, bool checkUser)
{
	PgBackendStatus *beentry;
	int			i;

	beentry = BackendStatusArray;
	for (i = 1; i <= MaxBackends; i++)
	{
		/*
		 * Although we expect the target backend's entry to be stable, that
		 * doesn't imply that anyone else's is.  To avoid identifying the
		 * wrong backend, while we check for a match to the desired PID we
		 * must follow the protocol of retrying if st_changecount changes
		 * while we examine the entry, or if it's odd.  (This might be
		 * unnecessary, since fetching or storing an int is almost certainly
		 * atomic, but let's play it safe.)  We use a volatile pointer here to
		 * ensure the compiler doesn't try to get cute.
		 */
		volatile PgBackendStatus *vbeentry = beentry;
		bool		found;

		for (;;)
		{
			int			before_changecount;
			int			after_changecount;

			FUNC2(vbeentry, before_changecount);

			found = (vbeentry->st_procpid == pid);

			FUNC4(vbeentry, after_changecount);

			if (FUNC5(before_changecount,
											  after_changecount))
				break;

			/* Make sure we can break out of loop if stuck... */
			FUNC0();
		}

		if (found)
		{
			/* Now it is safe to use the non-volatile pointer */
			if (checkUser && !FUNC6() && beentry->st_userid != FUNC1())
				return "<insufficient privilege>";
			else if (*(beentry->st_activity_raw) == '\0')
				return "<command string not enabled>";
			else
			{
				/* this'll leak a bit of memory, but that seems acceptable */
				return FUNC3(beentry->st_activity_raw);
			}
		}

		beentry++;
	}

	/* If we get here, caller is in error ... */
	return "<backend information not available>";
}