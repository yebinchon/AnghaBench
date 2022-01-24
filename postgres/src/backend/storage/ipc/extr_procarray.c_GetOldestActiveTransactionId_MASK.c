#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {int /*<<< orphan*/  nextFullXid; } ;
struct TYPE_7__ {int /*<<< orphan*/  xid; } ;
struct TYPE_6__ {int numProcs; int* pgprocnos; } ;
typedef  TYPE_1__ ProcArrayStruct ;
typedef  TYPE_2__ PGXACT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_5__* ShmemVariableCache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XidGenLock ; 
 TYPE_2__* allPgXact ; 
 TYPE_1__* procArray ; 

TransactionId
FUNC8(void)
{
	ProcArrayStruct *arrayP = procArray;
	TransactionId oldestRunningXid;
	int			index;

	FUNC0(!FUNC3());

	/*
	 * Read nextXid, as the upper bound of what's still active.
	 *
	 * Reading a TransactionId is atomic, but we must grab the lock to make
	 * sure that all XIDs < nextXid are already present in the proc array (or
	 * have already completed), when we spin over it.
	 */
	FUNC1(XidGenLock, LW_SHARED);
	oldestRunningXid = FUNC7(ShmemVariableCache->nextFullXid);
	FUNC2(XidGenLock);

	/*
	 * Spin over procArray collecting all xids and subxids.
	 */
	FUNC1(ProcArrayLock, LW_SHARED);
	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGXACT	   *pgxact = &allPgXact[pgprocno];
		TransactionId xid;

		/* Fetch xid just once - see GetNewTransactionId */
		xid = FUNC6(pgxact->xid);

		if (!FUNC4(xid))
			continue;

		if (FUNC5(xid, oldestRunningXid))
			oldestRunningXid = xid;

		/*
		 * Top-level XID of a transaction is always less than any of its
		 * subxids, so we don't need to check if any of the subxids are
		 * smaller than oldestRunningXid
		 */
	}
	FUNC2(ProcArrayLock);

	return oldestRunningXid;
}