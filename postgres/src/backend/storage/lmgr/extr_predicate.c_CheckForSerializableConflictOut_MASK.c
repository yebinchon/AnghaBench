#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_25__ {int /*<<< orphan*/  t_data; } ;
struct TYPE_21__ {scalar_t__ lastCommitBeforeSnapshot; scalar_t__ earliestOutConflictCommit; } ;
struct TYPE_24__ {TYPE_1__ SeqNo; int /*<<< orphan*/  flags; int /*<<< orphan*/  topXid; int /*<<< orphan*/  inConflicts; } ;
struct TYPE_23__ {TYPE_4__* myXact; } ;
struct TYPE_22__ {int /*<<< orphan*/  xid; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  scalar_t__ SerCommitSeqNo ;
typedef  TYPE_2__ SERIALIZABLEXIDTAG ;
typedef  TYPE_3__ SERIALIZABLEXID ;
typedef  TYPE_4__ SERIALIZABLEXACT ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_5__* HeapTuple ;
typedef  int HTSV_Result ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HASH_FIND ; 
#define  HEAPTUPLE_DEAD 132 
#define  HEAPTUPLE_DELETE_IN_PROGRESS 131 
#define  HEAPTUPLE_INSERT_IN_PROGRESS 130 
#define  HEAPTUPLE_LIVE 129 
#define  HEAPTUPLE_RECENTLY_DEAD 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidSerCommitSeqNo ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__* MySerializableXact ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SXACT_FLAG_DOOMED ; 
 int /*<<< orphan*/  SXACT_FLAG_SUMMARY_CONFLICT_OUT ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  SerializableXidHash ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 scalar_t__ FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 scalar_t__ FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TransactionXmin ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC32(bool visible, Relation relation,
								HeapTuple tuple, Buffer buffer,
								Snapshot snapshot)
{
	TransactionId xid;
	SERIALIZABLEXIDTAG sxidtag;
	SERIALIZABLEXID *sxid;
	SERIALIZABLEXACT *sxact;
	HTSV_Result htsvResult;

	if (!FUNC11(relation, snapshot))
		return;

	/* Check if someone else has already decided that we need to die */
	if (FUNC17(MySerializableXact))
	{
		FUNC26(ERROR,
				(FUNC27(ERRCODE_T_R_SERIALIZATION_FAILURE),
				 FUNC30("could not serialize access due to read/write dependencies among transactions"),
				 FUNC28("Reason code: Canceled on identification as a pivot, during conflict out checking."),
				 FUNC29("The transaction might succeed if retried.")));
	}

	/*
	 * Check to see whether the tuple has been written to by a concurrent
	 * transaction, either to create it not visible to us, or to delete it
	 * while it is visible to us.  The "visible" bool indicates whether the
	 * tuple is visible to us, while HeapTupleSatisfiesVacuum checks what else
	 * is going on with it.
	 */
	htsvResult = FUNC5(tuple, TransactionXmin, buffer);
	switch (htsvResult)
	{
		case HEAPTUPLE_LIVE:
			if (visible)
				return;
			xid = FUNC4(tuple->t_data);
			break;
		case HEAPTUPLE_RECENTLY_DEAD:
			if (!visible)
				return;
			xid = FUNC3(tuple->t_data);
			break;
		case HEAPTUPLE_DELETE_IN_PROGRESS:
			xid = FUNC3(tuple->t_data);
			break;
		case HEAPTUPLE_INSERT_IN_PROGRESS:
			xid = FUNC4(tuple->t_data);
			break;
		case HEAPTUPLE_DEAD:
			return;
		default:

			/*
			 * The only way to get to this default clause is if a new value is
			 * added to the enum type without adding it to this switch
			 * statement.  That's a bug, so elog.
			 */
			FUNC25(ERROR, "unrecognized return value from HeapTupleSatisfiesVacuum: %u", htsvResult);

			/*
			 * In spite of having all enum values covered and calling elog on
			 * this default, some compilers think this is a code path which
			 * allows xid to be used below without initialization. Silence
			 * that warning.
			 */
			xid = InvalidTransactionId;
	}
	FUNC0(FUNC22(xid));
	FUNC0(FUNC21(xid, TransactionXmin));

	/*
	 * Find top level xid.  Bail out if xid is too early to be a conflict, or
	 * if it's our own xid.
	 */
	if (FUNC20(xid, FUNC2()))
		return;
	xid = FUNC12(xid);
	if (FUNC23(xid, TransactionXmin))
		return;
	if (FUNC20(xid, FUNC2()))
		return;

	/*
	 * Find sxact or summarized info for the top level xid.
	 */
	sxidtag.xid = xid;
	FUNC6(SerializableXactHashLock, LW_EXCLUSIVE);
	sxid = (SERIALIZABLEXID *)
		FUNC31(SerializableXidHash, &sxidtag, HASH_FIND, NULL);
	if (!sxid)
	{
		/*
		 * Transaction not found in "normal" SSI structures.  Check whether it
		 * got pushed out to SLRU storage for "old committed" transactions.
		 */
		SerCommitSeqNo conflictCommitSeqNo;

		conflictCommitSeqNo = FUNC8(xid);
		if (conflictCommitSeqNo != 0)
		{
			if (conflictCommitSeqNo != InvalidSerCommitSeqNo
				&& (!FUNC19(MySerializableXact)
					|| conflictCommitSeqNo
					<= MySerializableXact->SeqNo.lastCommitBeforeSnapshot))
				FUNC26(ERROR,
						(FUNC27(ERRCODE_T_R_SERIALIZATION_FAILURE),
						 FUNC30("could not serialize access due to read/write dependencies among transactions"),
						 FUNC28("Reason code: Canceled on conflict out to old pivot %u.", xid),
						 FUNC29("The transaction might succeed if retried.")));

			if (FUNC14(MySerializableXact)
				|| !FUNC10(&MySerializableXact->inConflicts))
				FUNC26(ERROR,
						(FUNC27(ERRCODE_T_R_SERIALIZATION_FAILURE),
						 FUNC30("could not serialize access due to read/write dependencies among transactions"),
						 FUNC28("Reason code: Canceled on identification as a pivot, with conflict out to old committed transaction %u.", xid),
						 FUNC29("The transaction might succeed if retried.")));

			MySerializableXact->flags |= SXACT_FLAG_SUMMARY_CONFLICT_OUT;
		}

		/* It's not serializable or otherwise not important. */
		FUNC7(SerializableXactHashLock);
		return;
	}
	sxact = sxid->myXact;
	FUNC0(FUNC20(sxact->topXid, xid));
	if (sxact == MySerializableXact || FUNC17(sxact))
	{
		/* Can't conflict with ourself or a transaction that will roll back. */
		FUNC7(SerializableXactHashLock);
		return;
	}

	/*
	 * We have a conflict out to a transaction which has a conflict out to a
	 * summarized transaction.  That summarized transaction must have
	 * committed first, and we can't tell when it committed in relation to our
	 * snapshot acquisition, so something needs to be canceled.
	 */
	if (FUNC15(sxact))
	{
		if (!FUNC18(sxact))
		{
			sxact->flags |= SXACT_FLAG_DOOMED;
			FUNC7(SerializableXactHashLock);
			return;
		}
		else
		{
			FUNC7(SerializableXactHashLock);
			FUNC26(ERROR,
					(FUNC27(ERRCODE_T_R_SERIALIZATION_FAILURE),
					 FUNC30("could not serialize access due to read/write dependencies among transactions"),
					 FUNC28("Reason code: Canceled on conflict out to old pivot."),
					 FUNC29("The transaction might succeed if retried.")));
		}
	}

	/*
	 * If this is a read-only transaction and the writing transaction has
	 * committed, and it doesn't have a rw-conflict to a transaction which
	 * committed before it, no conflict.
	 */
	if (FUNC19(MySerializableXact)
		&& FUNC16(sxact)
		&& !FUNC15(sxact)
		&& (!FUNC13(sxact)
			|| MySerializableXact->SeqNo.lastCommitBeforeSnapshot < sxact->SeqNo.earliestOutConflictCommit))
	{
		/* Read-only transaction will appear to run first.  No conflict. */
		FUNC7(SerializableXactHashLock);
		return;
	}

	if (!FUNC24(xid))
	{
		/* This write was already in our snapshot; no conflict. */
		FUNC7(SerializableXactHashLock);
		return;
	}

	if (FUNC9(MySerializableXact, sxact))
	{
		/* We don't want duplicate conflict records in the list. */
		FUNC7(SerializableXactHashLock);
		return;
	}

	/*
	 * Flag the conflict.  But first, if this conflict creates a dangerous
	 * structure, ereport an error.
	 */
	FUNC1(MySerializableXact, sxact);
	FUNC7(SerializableXactHashLock);
}