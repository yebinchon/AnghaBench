#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  db; int /*<<< orphan*/  queryFout; } ;
struct TYPE_5__ {char* extra; char* relname; int be_pid; } ;
typedef  TYPE_1__ PGnotify ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_2__ pset ; 

__attribute__((used)) static void
FUNC6(void)
{
	PGnotify   *notify;

	FUNC0(pset.db);
	while ((notify = FUNC2(pset.db)) != NULL)
	{
		/* for backward compatibility, only show payload if nonempty */
		if (notify->extra[0])
			FUNC5(pset.queryFout, FUNC3("Asynchronous notification \"%s\" with payload \"%s\" received from server process with PID %d.\n"),
					notify->relname, notify->extra, notify->be_pid);
		else
			FUNC5(pset.queryFout, FUNC3("Asynchronous notification \"%s\" received from server process with PID %d.\n"),
					notify->relname, notify->be_pid);
		FUNC4(pset.queryFout);
		FUNC1(notify);
		FUNC0(pset.db);
	}
}