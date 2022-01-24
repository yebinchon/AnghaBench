#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_11__ {int /*<<< orphan*/  latestCompletedXid; } ;
struct TYPE_10__ {int /*<<< orphan*/  xid; } ;
struct TYPE_9__ {scalar_t__ pid; size_t pgprocno; } ;
struct TYPE_8__ {int numProcs; size_t* pgprocnos; } ;
typedef  TYPE_1__ ProcArrayStruct ;
typedef  TYPE_2__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 TYPE_6__* ShmemVariableCache ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* allPgXact ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,size_t*,int) ; 
 TYPE_1__* procArray ; 

void
FUNC8(PGPROC *proc, TransactionId latestXid)
{
	ProcArrayStruct *arrayP = procArray;
	int			index;

#ifdef XIDCACHE_DEBUG
	/* dump stats at backend shutdown, but not prepared-xact end */
	if (proc->pid != 0)
		DisplayXidCache();
#endif

	FUNC2(ProcArrayLock, LW_EXCLUSIVE);

	if (FUNC4(latestXid))
	{
		FUNC0(FUNC4(allPgXact[proc->pgprocno].xid));

		/* Advance global latestCompletedXid while holding the lock */
		if (FUNC5(ShmemVariableCache->latestCompletedXid,
								  latestXid))
			ShmemVariableCache->latestCompletedXid = latestXid;
	}
	else
	{
		/* Shouldn't be trying to remove a live transaction here */
		FUNC0(!FUNC4(allPgXact[proc->pgprocno].xid));
	}

	for (index = 0; index < arrayP->numProcs; index++)
	{
		if (arrayP->pgprocnos[index] == proc->pgprocno)
		{
			/* Keep the PGPROC array sorted. See notes above */
			FUNC7(&arrayP->pgprocnos[index], &arrayP->pgprocnos[index + 1],
					(arrayP->numProcs - index - 1) * sizeof(int));
			arrayP->pgprocnos[arrayP->numProcs - 1] = -1;	/* for debugging */
			arrayP->numProcs--;
			FUNC3(ProcArrayLock);
			return;
		}
	}

	/* Oops */
	FUNC3(ProcArrayLock);

	FUNC6(LOG, "failed to find proc %p in ProcArray", proc);
}