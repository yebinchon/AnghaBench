#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t nsubxacts; int /*<<< orphan*/  xtop; } ;
typedef  TYPE_1__ xl_xact_assignment ;
typedef  TYPE_2__* TransactionState ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_9__ {int didLogXid; } ;
struct TYPE_8__ {scalar_t__ state; int nestingLevel; int /*<<< orphan*/  fullTransactionId; int /*<<< orphan*/  curTransactionOwner; struct TYPE_8__* parent; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 size_t MinSizeOfXactAssignment ; 
 size_t PGPROC_MAX_CACHED_SUBXIDS ; 
 int /*<<< orphan*/  RM_XACT_ID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRANS_INPROGRESS ; 
 TYPE_5__ TopTransactionStateData ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_XACT_ASSIGNMENT ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XactTopFullTransactionId ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 size_t nUnreportedXids ; 
 TYPE_2__** FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__**) ; 
 int /*<<< orphan*/ * unreportedXids ; 

__attribute__((used)) static void
FUNC19(TransactionState s)
{
	bool		isSubXact = (s->parent != NULL);
	ResourceOwner currentOwner;
	bool		log_unknown_top = false;

	/* Assert that caller didn't screw up */
	FUNC0(!FUNC1(s->fullTransactionId));
	FUNC0(s->state == TRANS_INPROGRESS);

	/*
	 * Workers synchronize transaction state at the beginning of each parallel
	 * operation, so we can't account for new XIDs at this point.
	 */
	if (FUNC4() || FUNC5())
		FUNC16(ERROR, "cannot assign XIDs during a parallel operation");

	/*
	 * Ensure parent(s) have XIDs, so that a child always has an XID later
	 * than its parent.  Mustn't recurse here, or we might get a stack
	 * overflow if we're at the bottom of a huge stack of subtransactions none
	 * of which have XIDs yet.
	 */
	if (isSubXact && !FUNC1(s->parent->fullTransactionId))
	{
		TransactionState p = s->parent;
		TransactionState *parents;
		size_t		parentOffset = 0;

		parents = FUNC17(sizeof(TransactionState) * s->nestingLevel);
		while (p != NULL && !FUNC1(p->fullTransactionId))
		{
			parents[parentOffset++] = p;
			p = p->parent;
		}

		/*
		 * This is technically a recursive call, but the recursion will never
		 * be more than one layer deep.
		 */
		while (parentOffset != 0)
			FUNC19(parents[--parentOffset]);

		FUNC18(parents);
	}

	/*
	 * When wal_level=logical, guarantee that a subtransaction's xid can only
	 * be seen in the WAL stream if its toplevel xid has been logged before.
	 * If necessary we log an xact_assignment record with fewer than
	 * PGPROC_MAX_CACHED_SUBXIDS. Note that it is fine if didLogXid isn't set
	 * for a transaction even though it appears in a WAL record, we just might
	 * superfluously log something. That can happen when an xid is included
	 * somewhere inside a wal record, but not in XLogRecord->xl_xid, like in
	 * xl_standby_locks.
	 */
	if (isSubXact && FUNC11() &&
		!TopTransactionStateData.didLogXid)
		log_unknown_top = true;

	/*
	 * Generate a new FullTransactionId and record its xid in PG_PROC and
	 * pg_subtrans.
	 *
	 * NB: we must make the subtrans entry BEFORE the Xid appears anywhere in
	 * shared storage other than PG_PROC; because if there's no room for it in
	 * PG_PROC, the subtrans entry is needed to ensure that other backends see
	 * the Xid as "running".  See GetNewTransactionId.
	 */
	s->fullTransactionId = FUNC2(isSubXact);
	if (!isSubXact)
		XactTopFullTransactionId = s->fullTransactionId;

	if (isSubXact)
		FUNC7(FUNC15(s->fullTransactionId),
						  FUNC15(s->parent->fullTransactionId));

	/*
	 * If it's a top-level transaction, the predicate locking system needs to
	 * be told about it too.
	 */
	if (!isSubXact)
		FUNC6(FUNC15(s->fullTransactionId));

	/*
	 * Acquire lock on the transaction XID.  (We assume this cannot block.) We
	 * have to ensure that the lock is assigned to the transaction's own
	 * ResourceOwner.
	 */
	currentOwner = CurrentResourceOwner;
	CurrentResourceOwner = s->curTransactionOwner;

	FUNC14(FUNC15(s->fullTransactionId));

	CurrentResourceOwner = currentOwner;

	/*
	 * Every PGPROC_MAX_CACHED_SUBXIDS assigned transaction ids within each
	 * top-level transaction we issue a WAL record for the assignment. We
	 * include the top-level xid and all the subxids that have not yet been
	 * reported using XLOG_XACT_ASSIGNMENT records.
	 *
	 * This is required to limit the amount of shared memory required in a hot
	 * standby server to keep track of in-progress XIDs. See notes for
	 * RecordKnownAssignedTransactionIds().
	 *
	 * We don't keep track of the immediate parent of each subxid, only the
	 * top-level transaction that each subxact belongs to. This is correct in
	 * recovery only because aborted subtransactions are separately WAL
	 * logged.
	 *
	 * This is correct even for the case where several levels above us didn't
	 * have an xid assigned as we recursed up to them beforehand.
	 */
	if (isSubXact && FUNC13())
	{
		unreportedXids[nUnreportedXids] = FUNC15(s->fullTransactionId);
		nUnreportedXids++;

		/*
		 * ensure this test matches similar one in
		 * RecoverPreparedTransactions()
		 */
		if (nUnreportedXids >= PGPROC_MAX_CACHED_SUBXIDS ||
			log_unknown_top)
		{
			xl_xact_assignment xlrec;

			/*
			 * xtop is always set by now because we recurse up transaction
			 * stack to the highest unassigned xid and then come back down
			 */
			xlrec.xtop = FUNC3();
			FUNC0(FUNC8(xlrec.xtop));
			xlrec.nsubxacts = nUnreportedXids;

			FUNC9();
			FUNC12((char *) &xlrec, MinSizeOfXactAssignment);
			FUNC12((char *) unreportedXids,
							 nUnreportedXids * sizeof(TransactionId));

			(void) FUNC10(RM_XACT_ID, XLOG_XACT_ASSIGNMENT);

			nUnreportedXids = 0;
			/* mark top, not current xact as having been logged */
			TopTransactionStateData.didLogXid = true;
		}
	}
}