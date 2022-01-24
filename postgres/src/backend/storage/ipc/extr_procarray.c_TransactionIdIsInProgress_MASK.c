#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_14__ {int /*<<< orphan*/  latestCompletedXid; } ;
struct TYPE_10__ {int /*<<< orphan*/ * xids; } ;
struct TYPE_13__ {TYPE_1__ subxids; } ;
struct TYPE_12__ {int nxids; scalar_t__ overflowed; int /*<<< orphan*/  xid; } ;
struct TYPE_11__ {int maxProcs; int numProcs; int* pgprocnos; int /*<<< orphan*/  lastOverflowedXid; } ;
typedef  TYPE_2__ ProcArrayStruct ;
typedef  TYPE_3__ PGXACT ;
typedef  TYPE_4__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_4__* MyProc ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  RecentXmin ; 
 scalar_t__ FUNC5 () ; 
 TYPE_8__* ShmemVariableCache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int TOTAL_MAX_CACHED_SUBXIDS ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_3__* allPgXact ; 
 TYPE_4__* allProcs ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 TYPE_2__* procArray ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 

bool
FUNC29(TransactionId xid)
{
	static TransactionId *xids = NULL;
	int			nxids = 0;
	ProcArrayStruct *arrayP = procArray;
	TransactionId topxid;
	int			i,
				j;

	/*
	 * Don't bother checking a transaction older than RecentXmin; it could not
	 * possibly still be running.  (Note: in particular, this guarantees that
	 * we reject InvalidTransactionId, FrozenTransactionId, etc as not
	 * running.)
	 */
	if (FUNC12(xid, RecentXmin))
	{
		FUNC26();
		return false;
	}

	/*
	 * We may have just checked the status of this transaction, so if it is
	 * already known to be completed, we can fall out without any access to
	 * shared memory.
	 */
	if (FUNC10(xid))
	{
		FUNC22();
		return false;
	}

	/*
	 * Also, we can handle our own transaction (and subtransactions) without
	 * any access to shared memory.
	 */
	if (FUNC9(xid))
	{
		FUNC25();
		return true;
	}

	/*
	 * If first time through, get workspace to remember main XIDs in. We
	 * malloc it permanently to avoid repeated palloc/pfree overhead.
	 */
	if (xids == NULL)
	{
		/*
		 * In hot standby mode, reserve enough space to hold all xids in the
		 * known-assigned list. If we later finish recovery, we no longer need
		 * the bigger array, but we don't bother to shrink it.
		 */
		int			maxxids = FUNC5() ? TOTAL_MAX_CACHED_SUBXIDS : arrayP->maxProcs;

		xids = (TransactionId *) FUNC18(maxxids * sizeof(TransactionId));
		if (xids == NULL)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_OUT_OF_MEMORY),
					 FUNC17("out of memory")));
	}

	FUNC3(ProcArrayLock, LW_SHARED);

	/*
	 * Now that we have the lock, we can check latestCompletedXid; if the
	 * target Xid is after that, it's surely still running.
	 */
	if (FUNC12(ShmemVariableCache->latestCompletedXid, xid))
	{
		FUNC4(ProcArrayLock);
		FUNC23();
		return true;
	}

	/* No shortcuts, gotta grovel through the array */
	for (i = 0; i < arrayP->numProcs; i++)
	{
		int			pgprocno = arrayP->pgprocnos[i];
		PGPROC	   *proc = &allProcs[pgprocno];
		PGXACT	   *pgxact = &allPgXact[pgprocno];
		TransactionId pxid;
		int			pxids;

		/* Ignore my own proc --- dealt with it above */
		if (proc == MyProc)
			continue;

		/* Fetch xid just once - see GetNewTransactionId */
		pxid = FUNC14(pgxact->xid);

		if (!FUNC11(pxid))
			continue;

		/*
		 * Step 1: check the main Xid
		 */
		if (FUNC8(pxid, xid))
		{
			FUNC4(ProcArrayLock);
			FUNC24();
			return true;
		}

		/*
		 * We can ignore main Xids that are younger than the target Xid, since
		 * the target could not possibly be their child.
		 */
		if (FUNC12(xid, pxid))
			continue;

		/*
		 * Step 2: check the cached child-Xids arrays
		 */
		pxids = pgxact->nxids;
		FUNC19();		/* pairs with barrier in GetNewTransactionId() */
		for (j = pxids - 1; j >= 0; j--)
		{
			/* Fetch xid just once - see GetNewTransactionId */
			TransactionId cxid = FUNC14(proc->subxids.xids[j]);

			if (FUNC8(cxid, xid))
			{
				FUNC4(ProcArrayLock);
				FUNC20();
				return true;
			}
		}

		/*
		 * Save the main Xid for step 4.  We only need to remember main Xids
		 * that have uncached children.  (Note: there is no race condition
		 * here because the overflowed flag cannot be cleared, only set, while
		 * we hold ProcArrayLock.  So we can't miss an Xid that we need to
		 * worry about.)
		 */
		if (pgxact->overflowed)
			xids[nxids++] = pxid;
	}

	/*
	 * Step 3: in hot standby mode, check the known-assigned-xids list.  XIDs
	 * in the list must be treated as running.
	 */
	if (FUNC5())
	{
		/* none of the PGXACT entries should have XIDs in hot standby mode */
		FUNC0(nxids == 0);

		if (FUNC1(xid))
		{
			FUNC4(ProcArrayLock);
			FUNC21();
			return true;
		}

		/*
		 * If the KnownAssignedXids overflowed, we have to check pg_subtrans
		 * too.  Fetch all xids from KnownAssignedXids that are lower than
		 * xid, since if xid is a subtransaction its parent will always have a
		 * lower value.  Note we will collect both main and subXIDs here, but
		 * there's no help for it.
		 */
		if (FUNC13(xid, procArray->lastOverflowedXid))
			nxids = FUNC2(xids, xid);
	}

	FUNC4(ProcArrayLock);

	/*
	 * If none of the relevant caches overflowed, we know the Xid is not
	 * running without even looking at pg_subtrans.
	 */
	if (nxids == 0)
	{
		FUNC27();
		return false;
	}

	/*
	 * Step 4: have to check pg_subtrans.
	 *
	 * At this point, we know it's either a subtransaction of one of the Xids
	 * in xids[], or it's not running.  If it's an already-failed
	 * subtransaction, we want to say "not running" even though its parent may
	 * still be running.  So first, check pg_xact to see if it's been aborted.
	 */
	FUNC28();

	if (FUNC7(xid))
		return false;

	/*
	 * It isn't aborted, so check whether the transaction tree it belongs to
	 * is still running (or, more precisely, whether it was running when we
	 * held ProcArrayLock).
	 */
	topxid = FUNC6(xid);
	FUNC0(FUNC11(topxid));
	if (!FUNC8(topxid, xid))
	{
		for (i = 0; i < nxids; i++)
		{
			if (FUNC8(xids[i], topxid))
				return true;
		}
	}

	return false;
}