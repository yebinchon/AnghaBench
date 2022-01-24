#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_17__ {int /*<<< orphan*/  latestCompletedXid; } ;
struct TYPE_16__ {scalar_t__ databaseId; } ;
struct TYPE_15__ {int vacuumFlags; int /*<<< orphan*/  xmin; int /*<<< orphan*/  xid; } ;
struct TYPE_14__ {int numProcs; int* pgprocnos; int /*<<< orphan*/  replication_slot_catalog_xmin; int /*<<< orphan*/  replication_slot_xmin; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relisshared; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ ProcArrayStruct ;
typedef  TYPE_4__ PGXACT ;
typedef  TYPE_5__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FirstNormalTransactionId ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ MyDatabaseId ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PROCARRAY_PROC_FLAGS_MASK ; 
 int PROCARRAY_SLOTS_XMIN ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_9__* ShmemVariableCache ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* allPgXact ; 
 TYPE_5__* allProcs ; 
 TYPE_3__* procArray ; 
 scalar_t__ vacuum_defer_cleanup_age ; 

TransactionId
FUNC12(Relation rel, int flags)
{
	ProcArrayStruct *arrayP = procArray;
	TransactionId result;
	int			index;
	bool		allDbs;

	TransactionId replication_slot_xmin = InvalidTransactionId;
	TransactionId replication_slot_catalog_xmin = InvalidTransactionId;

	/*
	 * If we're not computing a relation specific limit, or if a shared
	 * relation has been passed in, backends in all databases have to be
	 * considered.
	 */
	allDbs = rel == NULL || rel->rd_rel->relisshared;

	/* Cannot look for individual databases during recovery */
	FUNC0(allDbs || !FUNC5());

	FUNC2(ProcArrayLock, LW_SHARED);

	/*
	 * We initialize the MIN() calculation with latestCompletedXid + 1. This
	 * is a lower bound for the XIDs that might appear in the ProcArray later,
	 * and so protects us against overestimating the result due to future
	 * additions.
	 */
	result = ShmemVariableCache->latestCompletedXid;
	FUNC0(FUNC8(result));
	FUNC7(result);

	for (index = 0; index < arrayP->numProcs; index++)
	{
		int			pgprocno = arrayP->pgprocnos[index];
		PGPROC	   *proc = &allProcs[pgprocno];
		PGXACT	   *pgxact = &allPgXact[pgprocno];

		if (pgxact->vacuumFlags & (flags & PROCARRAY_PROC_FLAGS_MASK))
			continue;

		if (allDbs ||
			proc->databaseId == MyDatabaseId ||
			proc->databaseId == 0)	/* always include WalSender */
		{
			/* Fetch xid just once - see GetNewTransactionId */
			TransactionId xid = FUNC11(pgxact->xid);

			/* First consider the transaction's own Xid, if any */
			if (FUNC8(xid) &&
				FUNC10(xid, result))
				result = xid;

			/*
			 * Also consider the transaction's Xmin, if set.
			 *
			 * We must check both Xid and Xmin because a transaction might
			 * have an Xmin but not (yet) an Xid; conversely, if it has an
			 * Xid, that could determine some not-yet-set Xmin.
			 */
			xid = FUNC11(pgxact->xmin);
			if (FUNC8(xid) &&
				FUNC10(xid, result))
				result = xid;
		}
	}

	/*
	 * Fetch into local variable while ProcArrayLock is held - the
	 * LWLockRelease below is a barrier, ensuring this happens inside the
	 * lock.
	 */
	replication_slot_xmin = procArray->replication_slot_xmin;
	replication_slot_catalog_xmin = procArray->replication_slot_catalog_xmin;

	if (FUNC5())
	{
		/*
		 * Check to see whether KnownAssignedXids contains an xid value older
		 * than the main procarray.
		 */
		TransactionId kaxmin = FUNC1();

		FUNC3(ProcArrayLock);

		if (FUNC8(kaxmin) &&
			FUNC10(kaxmin, result))
			result = kaxmin;
	}
	else
	{
		/*
		 * No other information needed, so release the lock immediately.
		 */
		FUNC3(ProcArrayLock);

		/*
		 * Compute the cutoff XID by subtracting vacuum_defer_cleanup_age,
		 * being careful not to generate a "permanent" XID.
		 *
		 * vacuum_defer_cleanup_age provides some additional "slop" for the
		 * benefit of hot standby queries on standby servers.  This is quick
		 * and dirty, and perhaps not all that useful unless the master has a
		 * predictable transaction rate, but it offers some protection when
		 * there's no walsender connection.  Note that we are assuming
		 * vacuum_defer_cleanup_age isn't large enough to cause wraparound ---
		 * so guc.c should limit it to no more than the xidStopLimit threshold
		 * in varsup.c.  Also note that we intentionally don't apply
		 * vacuum_defer_cleanup_age on standby servers.
		 */
		result -= vacuum_defer_cleanup_age;
		if (!FUNC8(result))
			result = FirstNormalTransactionId;
	}

	/*
	 * Check whether there are replication slots requiring an older xmin.
	 */
	if (!(flags & PROCARRAY_SLOTS_XMIN) &&
		FUNC9(replication_slot_xmin) &&
		FUNC4(replication_slot_xmin, result))
		result = replication_slot_xmin;

	/*
	 * After locks have been released and vacuum_defer_cleanup_age has been
	 * applied, check whether we need to back up further to make logical
	 * decoding possible. We need to do so if we're computing the global limit
	 * (rel = NULL) or if the passed relation is a catalog relation of some
	 * kind.
	 */
	if (!(flags & PROCARRAY_SLOTS_XMIN) &&
		(rel == NULL ||
		 FUNC6(rel)) &&
		FUNC9(replication_slot_catalog_xmin) &&
		FUNC4(replication_slot_catalog_xmin, result))
		result = replication_slot_catalog_xmin;

	return result;
}