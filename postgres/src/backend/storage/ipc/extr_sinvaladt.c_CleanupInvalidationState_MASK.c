#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ procPid; int resetState; int signaled; scalar_t__ nextMsgNum; int /*<<< orphan*/ * proc; int /*<<< orphan*/  nextLXID; } ;
struct TYPE_4__ {int lastBackend; TYPE_2__* procState; } ;
typedef  TYPE_1__ SISeg ;
typedef  TYPE_2__ ProcState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MyBackendId ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  SInvalWriteLock ; 
 int /*<<< orphan*/  nextLocalTransactionId ; 

__attribute__((used)) static void
FUNC5(int status, Datum arg)
{
	SISeg	   *segP = (SISeg *) FUNC1(arg);
	ProcState  *stateP;
	int			i;

	FUNC0(FUNC4(segP));

	FUNC2(SInvalWriteLock, LW_EXCLUSIVE);

	stateP = &segP->procState[MyBackendId - 1];

	/* Update next local transaction ID for next holder of this backendID */
	stateP->nextLXID = nextLocalTransactionId;

	/* Mark myself inactive */
	stateP->procPid = 0;
	stateP->proc = NULL;
	stateP->nextMsgNum = 0;
	stateP->resetState = false;
	stateP->signaled = false;

	/* Recompute index of last active backend */
	for (i = segP->lastBackend; i > 0; i--)
	{
		if (segP->procState[i - 1].procPid != 0)
			break;
	}
	segP->lastBackend = i;

	FUNC3(SInvalWriteLock);
}