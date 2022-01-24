#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  locktag_lockmethodid; } ;
struct TYPE_13__ {int pid; int /*<<< orphan*/  lockmode; TYPE_10__ locktag; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ DEADLOCK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_10__*) ; 
 int /*<<< orphan*/  ERRCODE_T_R_DEADLOCK_DETECTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 TYPE_2__* deadlockDetails ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int nDeadlockDetails ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

void
FUNC16(void)
{
	StringInfoData clientbuf;	/* errdetail for client */
	StringInfoData logbuf;		/* errdetail for server log */
	StringInfoData locktagbuf;
	int			i;

	FUNC12(&clientbuf);
	FUNC12(&logbuf);
	FUNC12(&locktagbuf);

	/* Generate the "waits for" lines sent to the client */
	for (i = 0; i < nDeadlockDetails; i++)
	{
		DEADLOCK_INFO *info = &deadlockDetails[i];
		int			nextpid;

		/* The last proc waits for the first one... */
		if (i < nDeadlockDetails - 1)
			nextpid = info[1].pid;
		else
			nextpid = deadlockDetails[0].pid;

		/* reset locktagbuf to hold next object description */
		FUNC15(&locktagbuf);

		FUNC0(&locktagbuf, &info->locktag);

		if (i > 0)
			FUNC5(&clientbuf, '\n');

		FUNC4(&clientbuf,
						 FUNC2("Process %d waits for %s on %s; blocked by process %d."),
						 info->pid,
						 FUNC1(info->locktag.locktag_lockmethodid,
										 info->lockmode),
						 locktagbuf.data,
						 nextpid);
	}

	/* Duplicate all the above for the server ... */
	FUNC3(&logbuf, clientbuf.data, clientbuf.len);

	/* ... and add info about query strings */
	for (i = 0; i < nDeadlockDetails; i++)
	{
		DEADLOCK_INFO *info = &deadlockDetails[i];

		FUNC5(&logbuf, '\n');

		FUNC4(&logbuf,
						 FUNC2("Process %d: %s"),
						 info->pid,
						 FUNC13(info->pid, false));
	}

	FUNC14();

	FUNC6(ERROR,
			(FUNC7(ERRCODE_T_R_DEADLOCK_DETECTED),
			 FUNC11("deadlock detected"),
			 FUNC8("%s", clientbuf.data),
			 FUNC9("%s", logbuf.data),
			 FUNC10("See server log for query details.")));
}