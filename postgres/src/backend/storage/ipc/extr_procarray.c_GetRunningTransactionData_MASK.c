#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_13__ {scalar_t__ xids; } ;
struct TYPE_17__ {TYPE_1__ subxids; } ;
struct TYPE_16__ {int nxids; scalar_t__ overflowed; int /*<<< orphan*/  xid; } ;
struct TYPE_15__ {int numProcs; int* pgprocnos; } ;
struct TYPE_14__ {void** xids; int xcnt; int subxcnt; int subxid_overflow; void* nextXid; void* oldestRunningXid; void* latestCompletedXid; } ;
struct TYPE_12__ {int /*<<< orphan*/  nextFullXid; void* latestCompletedXid; } ;
typedef  TYPE_2__ RunningTransactionsData ;
typedef  TYPE_2__* RunningTransactions ;
typedef  TYPE_4__ ProcArrayStruct ;
typedef  TYPE_5__ PGXACT ;
typedef  TYPE_6__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_10__* ShmemVariableCache ; 
 int TOTAL_MAX_CACHED_SUBXIDS ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*,void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XidGenLock ; 
 TYPE_5__* allPgXact ; 
 TYPE_6__* allProcs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (void**,void*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_4__* procArray ; 

RunningTransactions
FUNC14(void)
{
	/* result workspace */
	static RunningTransactionsData CurrentRunningXactsData;

	ProcArrayStruct *arrayP = procArray;
	RunningTransactions CurrentRunningXacts = &CurrentRunningXactsData;
	TransactionId latestCompletedXid;
	TransactionId oldestRunningXid;
	TransactionId *xids;
	int			index;
	int			count;
	int			subcount;
	bool		suboverflowed;

	FUNC0(!FUNC2());

	/*
	 * Allocating space for maxProcs xids is usually overkill; numProcs would
	 * be sufficient.  But it seems better to do the malloc while not holding
	 * the lock, so we can't look at numProcs.  Likewise, we allocate much
	 * more subxip storage than is probably needed.
	 *
	 * Should only be allocated in bgwriter, since only ever executed during
	 * checkpoints.
	 */
	if (CurrentRunningXacts->xids == NULL)
	{
		/*
		 * First call
		 */
		CurrentRunningXacts->xids = (TransactionId *)
			FUNC11(TOTAL_MAX_CACHED_SUBXIDS * sizeof(TransactionId));
		if (CurrentRunningXacts->xids == NULL)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_OUT_OF_MEMORY),
					 FUNC10("out of memory")));
	}

	xids = CurrentRunningXacts->xids;

	count = subcount = 0;
	suboverflowed = false;

	/*
	 * Ensure that no xids enter or leave the procarray while we obtain
	 * snapshot.
	 */
	FUNC1(ProcArrayLock, LW_SHARED);
	FUNC1(XidGenLock, LW_SHARED);

	latestCompletedXid = ShmemVariableCache->latestCompletedXid;

	oldestRunningXid = FUNC7(ShmemVariableCache->nextFullXid);

	/*
	 * Spin over procArray collecting all xids
	 */
	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGXACT	   *pgxact = &allPgXact[pgprocno];
		TransactionId xid;

		/* Fetch xid just once - see GetNewTransactionId */
		xid = FUNC6(pgxact->xid);

		/*
		 * We don't need to store transactions that don't have a TransactionId
		 * yet because they will not show as running on a standby server.
		 */
		if (!FUNC4(xid))
			continue;

		/*
		 * Be careful not to exclude any xids before calculating the values of
		 * oldestRunningXid and suboverflowed, since these are used to clean
		 * up transaction information held on standbys.
		 */
		if (FUNC5(xid, oldestRunningXid))
			oldestRunningXid = xid;

		if (pgxact->overflowed)
			suboverflowed = true;

		/*
		 * If we wished to exclude xids this would be the right place for it.
		 * Procs with the PROC_IN_VACUUM flag set don't usually assign xids,
		 * but they do during truncation at the end when they get the lock and
		 * truncate, so it is not much of a problem to include them if they
		 * are seen and it is cleaner to include them.
		 */

		xids[count++] = xid;
	}

	/*
	 * Spin over procArray collecting all subxids, but only if there hasn't
	 * been a suboverflow.
	 */
	if (!suboverflowed)
	{
		for (index = 0; index < arrayP->numProcs; index++)
		{
			int			pgprocno = arrayP->pgprocnos[index];
			PGPROC	   *proc = &allProcs[pgprocno];
			PGXACT	   *pgxact = &allPgXact[pgprocno];
			int			nxids;

			/*
			 * Save subtransaction XIDs. Other backends can't add or remove
			 * entries while we're holding XidGenLock.
			 */
			nxids = pgxact->nxids;
			if (nxids > 0)
			{
				/* barrier not really required, as XidGenLock is held, but ... */
				FUNC13();	/* pairs with GetNewTransactionId */

				FUNC12(&xids[count], (void *) proc->subxids.xids,
					   nxids * sizeof(TransactionId));
				count += nxids;
				subcount += nxids;

				/*
				 * Top-level XID of a transaction is always less than any of
				 * its subxids, so we don't need to check if any of the
				 * subxids are smaller than oldestRunningXid
				 */
			}
		}
	}

	/*
	 * It's important *not* to include the limits set by slots here because
	 * snapbuild.c uses oldestRunningXid to manage its xmin horizon. If those
	 * were to be included here the initial value could never increase because
	 * of a circular dependency where slots only increase their limits when
	 * running xacts increases oldestRunningXid and running xacts only
	 * increases if slots do.
	 */

	CurrentRunningXacts->xcnt = count - subcount;
	CurrentRunningXacts->subxcnt = subcount;
	CurrentRunningXacts->subxid_overflow = suboverflowed;
	CurrentRunningXacts->nextXid = FUNC7(ShmemVariableCache->nextFullXid);
	CurrentRunningXacts->oldestRunningXid = oldestRunningXid;
	CurrentRunningXacts->latestCompletedXid = latestCompletedXid;

	FUNC0(FUNC4(CurrentRunningXacts->nextXid));
	FUNC0(FUNC4(CurrentRunningXacts->oldestRunningXid));
	FUNC0(FUNC3(CurrentRunningXacts->latestCompletedXid));

	/* We don't release the locks here, the caller is responsible for that */

	return CurrentRunningXacts;
}