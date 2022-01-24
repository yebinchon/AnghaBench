#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int xinfo; scalar_t__ nrels; int /*<<< orphan*/  xnodes; int /*<<< orphan*/  origin_lsn; int /*<<< orphan*/  subxacts; int /*<<< orphan*/  nsubxacts; int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; int /*<<< orphan*/  nmsgs; int /*<<< orphan*/  msgs; int /*<<< orphan*/  xact_time; int /*<<< orphan*/  origin_timestamp; } ;
typedef  TYPE_1__ xl_xact_parsed_commit ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  RepOriginId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidRepOriginId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ STANDBY_DISABLED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int XACT_XINFO_HAS_AE_LOCKS ; 
 int XACT_XINFO_HAS_ORIGIN ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ standbyState ; 

__attribute__((used)) static void
FUNC18(xl_xact_parsed_commit *parsed,
				 TransactionId xid,
				 XLogRecPtr lsn,
				 RepOriginId origin_id)
{
	TransactionId max_xid;
	TimestampTz commit_time;

	FUNC1(FUNC9(xid));

	max_xid = FUNC10(xid, parsed->nsubxacts, parsed->subxacts);

	/* Make sure nextFullXid is beyond any XID mentioned in the record. */
	FUNC0(max_xid);

	FUNC1(((parsed->xinfo & XACT_XINFO_HAS_ORIGIN) == 0) ==
		   (origin_id == InvalidRepOriginId));

	if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
		commit_time = parsed->origin_timestamp;
	else
		commit_time = parsed->xact_time;

	/* Set the transaction commit timestamp and metadata */
	FUNC11(xid, parsed->nsubxacts, parsed->subxacts,
								   commit_time, origin_id, false);

	if (standbyState == STANDBY_DISABLED)
	{
		/*
		 * Mark the transaction committed in pg_xact.
		 */
		FUNC8(xid, parsed->nsubxacts, parsed->subxacts);
	}
	else
	{
		/*
		 * If a transaction completion record arrives that has as-yet
		 * unobserved subtransactions then this will not have been fully
		 * handled by the call to RecordKnownAssignedTransactionIds() in the
		 * main recovery loop in xlog.c. So we need to do bookkeeping again to
		 * cover that case. This is confusing and it is easy to think this
		 * call is irrelevant, which has happened three times in development
		 * already. Leave it in.
		 */
		FUNC5(max_xid);

		/*
		 * Mark the transaction committed in pg_xact. We use async commit
		 * protocol during recovery to provide information on database
		 * consistency for when users try to set hint bits. It is important
		 * that we do not set hint bits until the minRecoveryPoint is past
		 * this commit record. This ensures that if we crash we don't see hint
		 * bits set on changes made by transactions that haven't yet
		 * recovered. It's unlikely but it's good to be safe.
		 */
		FUNC7(
									 xid, parsed->nsubxacts, parsed->subxacts, lsn);

		/*
		 * We must mark clog before we update the ProcArray.
		 */
		FUNC3(
											  xid, parsed->nsubxacts, parsed->subxacts, max_xid);

		/*
		 * Send any cache invalidations attached to the commit. We must
		 * maintain the same order of invalidation then release locks as
		 * occurs in CommitTransaction().
		 */
		FUNC4(
											 parsed->msgs, parsed->nmsgs,
											 FUNC16(parsed->xinfo),
											 parsed->dbId, parsed->tsId);

		/*
		 * Release locks, if any. We do this for both two phase and normal one
		 * phase transactions. In effect we are ignoring the prepare phase and
		 * just going straight to lock release.
		 */
		if (parsed->xinfo & XACT_XINFO_HAS_AE_LOCKS)
			FUNC6(xid, parsed->nsubxacts, parsed->subxacts);
	}

	if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
	{
		/* recover apply progress */
		FUNC17(origin_id, parsed->origin_lsn, lsn,
						   false /* backward */ , false /* WAL */ );
	}

	/* Make sure files supposed to be dropped are dropped */
	if (parsed->nrels > 0)
	{
		/*
		 * First update minimum recovery point to cover this WAL record. Once
		 * a relation is deleted, there's no going back. The buffer manager
		 * enforces the WAL-first rule for normal updates to relation files,
		 * so that the minimum recovery point is always updated before the
		 * corresponding change in the data file is flushed to disk, but we
		 * have to do the same here since we're bypassing the buffer manager.
		 *
		 * Doing this before deleting the files means that if a deletion fails
		 * for some reason, you cannot start up the system even after restart,
		 * until you fix the underlying situation so that the deletion will
		 * succeed. Alternatively, we could update the minimum recovery point
		 * after deletion, but that would leave a small window where the
		 * WAL-first rule would be violated.
		 */
		FUNC12(lsn);

		/* Make sure files supposed to be dropped are dropped */
		FUNC2(parsed->xnodes, parsed->nrels, true);
	}

	/*
	 * We issue an XLogFlush() for the same reason we emit ForceSyncCommit()
	 * in normal operation. For example, in CREATE DATABASE, we copy all files
	 * from the template database, and then commit the transaction. If we
	 * crash after all the files have been copied but before the commit, you
	 * have files in the data directory without an entry in pg_database. To
	 * minimize the window for that, we use ForceSyncCommit() to rush the
	 * commit record to disk as quick as possible. We have the same window
	 * during recovery, and forcing an XLogFlush() (which updates
	 * minRecoveryPoint during recovery) helps to reduce that problem window,
	 * for any user that requested ForceSyncCommit().
	 */
	if (FUNC15(parsed->xinfo))
		FUNC12(lsn);

	/*
	 * If asked by the primary (because someone is waiting for a synchronous
	 * commit = remote_apply), we will need to ask walreceiver to send a reply
	 * immediately.
	 */
	if (FUNC14(parsed->xinfo))
		FUNC13();
}