#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int TransactionId ;
struct TYPE_8__ {int xid; int nxids; int overflowed; } ;
struct TYPE_5__ {int* xids; } ;
struct TYPE_7__ {TYPE_1__ subxids; } ;
struct TYPE_6__ {int xidVacLimit; int xidWarnLimit; int xidStopLimit; int xidWrapLimit; char* oldestXidDB; int /*<<< orphan*/  nextFullXid; } ;
typedef  char* Oid ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BootstrapTransactionId ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__* MyPgXact ; 
 TYPE_3__* MyProc ; 
 int PGPROC_MAX_CACHED_SUBXIDS ; 
 int /*<<< orphan*/  PMSIGNAL_START_AUTOVAC_LAUNCHER ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ShmemVariableCache ; 
 scalar_t__ FUNC12 (int,int) ; 
 int /*<<< orphan*/  WARNING ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XidGenLock ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,...) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

FullTransactionId
FUNC21(bool isSubXact)
{
	FullTransactionId full_xid;
	TransactionId xid;

	/*
	 * Workers synchronize transaction state at the beginning of each parallel
	 * operation, so we can't account for new XIDs after that point.
	 */
	if (FUNC7())
		FUNC14(ERROR, "cannot assign TransactionIds during a parallel operation");

	/*
	 * During bootstrap initialization, we return the special bootstrap
	 * transaction id.
	 */
	if (FUNC6())
	{
		FUNC0(!isSubXact);
		MyPgXact->xid = BootstrapTransactionId;
		return FUNC5(0, BootstrapTransactionId);
	}

	/* safety check, we should never get this far in a HS standby */
	if (FUNC10())
		FUNC14(ERROR, "cannot assign TransactionIds during recovery");

	FUNC8(XidGenLock, LW_EXCLUSIVE);

	full_xid = ShmemVariableCache->nextFullXid;
	xid = FUNC13(full_xid);

	/*----------
	 * Check to see if it's safe to assign another XID.  This protects against
	 * catastrophic data loss due to XID wraparound.  The basic rules are:
	 *
	 * If we're past xidVacLimit, start trying to force autovacuum cycles.
	 * If we're past xidWarnLimit, start issuing warnings.
	 * If we're past xidStopLimit, refuse to execute transactions, unless
	 * we are running in single-user mode (which gives an escape hatch
	 * to the DBA who somehow got past the earlier defenses).
	 *
	 * Note that this coding also appears in GetNewMultiXactId.
	 *----------
	 */
	if (FUNC12(xid, ShmemVariableCache->xidVacLimit))
	{
		/*
		 * For safety's sake, we release XidGenLock while sending signals,
		 * warnings, etc.  This is not so much because we care about
		 * preserving concurrency in this situation, as to avoid any
		 * possibility of deadlock while doing get_database_name(). First,
		 * copy all the shared values we'll need in this path.
		 */
		TransactionId xidWarnLimit = ShmemVariableCache->xidWarnLimit;
		TransactionId xidStopLimit = ShmemVariableCache->xidStopLimit;
		TransactionId xidWrapLimit = ShmemVariableCache->xidWrapLimit;
		Oid			oldest_datoid = ShmemVariableCache->oldestXidDB;

		FUNC9(XidGenLock);

		/*
		 * To avoid swamping the postmaster with signals, we issue the autovac
		 * request only once per 64K transaction starts.  This still gives
		 * plenty of chances before we get into real trouble.
		 */
		if (IsUnderPostmaster && (xid % 65536) == 0)
			FUNC11(PMSIGNAL_START_AUTOVAC_LAUNCHER);

		if (IsUnderPostmaster &&
			FUNC12(xid, xidStopLimit))
		{
			char	   *oldest_datname = FUNC19(oldest_datoid);

			/* complain even if that DB has disappeared */
			if (oldest_datname)
				FUNC15(ERROR,
						(FUNC16(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
						 FUNC18("database is not accepting commands to avoid wraparound data loss in database \"%s\"",
								oldest_datname),
						 FUNC17("Stop the postmaster and vacuum that database in single-user mode.\n"
								 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
			else
				FUNC15(ERROR,
						(FUNC16(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
						 FUNC18("database is not accepting commands to avoid wraparound data loss in database with OID %u",
								oldest_datoid),
						 FUNC17("Stop the postmaster and vacuum that database in single-user mode.\n"
								 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
		}
		else if (FUNC12(xid, xidWarnLimit))
		{
			char	   *oldest_datname = FUNC19(oldest_datoid);

			/* complain even if that DB has disappeared */
			if (oldest_datname)
				FUNC15(WARNING,
						(FUNC18("database \"%s\" must be vacuumed within %u transactions",
								oldest_datname,
								xidWrapLimit - xid),
						 FUNC17("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
								 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
			else
				FUNC15(WARNING,
						(FUNC18("database with OID %u must be vacuumed within %u transactions",
								oldest_datoid,
								xidWrapLimit - xid),
						 FUNC17("To avoid a database shutdown, execute a database-wide VACUUM in that database.\n"
								 "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
		}

		/* Re-acquire lock and start over */
		FUNC8(XidGenLock, LW_EXCLUSIVE);
		full_xid = ShmemVariableCache->nextFullXid;
		xid = FUNC13(full_xid);
	}

	/*
	 * If we are allocating the first XID of a new page of the commit log,
	 * zero out that commit-log page before returning. We must do this while
	 * holding XidGenLock, else another xact could acquire and commit a later
	 * XID before we zero the page.  Fortunately, a page of the commit log
	 * holds 32K or more transactions, so we don't have to do this very often.
	 *
	 * Extend pg_subtrans and pg_commit_ts too.
	 */
	FUNC1(xid);
	FUNC2(xid);
	FUNC3(xid);

	/*
	 * Now advance the nextFullXid counter.  This must not happen until after
	 * we have successfully completed ExtendCLOG() --- if that routine fails,
	 * we want the next incoming transaction to try it again.  We cannot
	 * assign more XIDs until there is CLOG space for them.
	 */
	FUNC4(&ShmemVariableCache->nextFullXid);

	/*
	 * We must store the new XID into the shared ProcArray before releasing
	 * XidGenLock.  This ensures that every active XID older than
	 * latestCompletedXid is present in the ProcArray, which is essential for
	 * correct OldestXmin tracking; see src/backend/access/transam/README.
	 *
	 * Note that readers of PGXACT xid fields should be careful to fetch the
	 * value only once, rather than assume they can read a value multiple
	 * times and get the same answer each time.  Note we are assuming that
	 * TransactionId and int fetch/store are atomic.
	 *
	 * The same comments apply to the subxact xid count and overflow fields.
	 *
	 * Use of a write barrier prevents dangerous code rearrangement in this
	 * function; other backends could otherwise e.g. be examining my subxids
	 * info concurrently, and we don't want them to see an invalid
	 * intermediate state, such as an incremented nxids before the array entry
	 * is filled.
	 *
	 * Other processes that read nxids should do so before reading xids
	 * elements with a pg_read_barrier() in between, so that they can be sure
	 * not to read an uninitialized array element; see
	 * src/backend/storage/lmgr/README.barrier.
	 *
	 * If there's no room to fit a subtransaction XID into PGPROC, set the
	 * cache-overflowed flag instead.  This forces readers to look in
	 * pg_subtrans to map subtransaction XIDs up to top-level XIDs. There is a
	 * race-condition window, in that the new XID will not appear as running
	 * until its parent link has been placed into pg_subtrans. However, that
	 * will happen before anyone could possibly have a reason to inquire about
	 * the status of the XID, so it seems OK.  (Snapshots taken during this
	 * window *will* include the parent XID, so they will deliver the correct
	 * answer later on when someone does have a reason to inquire.)
	 */
	if (!isSubXact)
		MyPgXact->xid = xid;	/* LWLockRelease acts as barrier */
	else
	{
		int			nxids = MyPgXact->nxids;

		if (nxids < PGPROC_MAX_CACHED_SUBXIDS)
		{
			MyProc->subxids.xids[nxids] = xid;
			FUNC20();
			MyPgXact->nxids = nxids + 1;
		}
		else
			MyPgXact->overflowed = true;
	}

	FUNC9(XidGenLock);

	return full_xid;
}