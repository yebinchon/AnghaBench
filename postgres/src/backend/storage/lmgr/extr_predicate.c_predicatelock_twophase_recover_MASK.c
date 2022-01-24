#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_21__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  xmin; } ;
typedef  TYPE_4__ TwoPhasePredicateXactRecord ;
struct TYPE_20__ {int /*<<< orphan*/  lockRecord; int /*<<< orphan*/  xactRecord; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_3__ data; } ;
typedef  TYPE_5__ TwoPhasePredicateRecord ;
struct TYPE_23__ {int /*<<< orphan*/  target; } ;
typedef  TYPE_6__ TwoPhasePredicateLockRecord ;
typedef  void* TransactionId ;
struct TYPE_19__ {void* lastCommitBeforeSnapshot; } ;
struct TYPE_18__ {scalar_t__ localTransactionId; int /*<<< orphan*/  backendId; } ;
struct TYPE_26__ {int /*<<< orphan*/  xmin; int /*<<< orphan*/  flags; int /*<<< orphan*/  inConflicts; int /*<<< orphan*/  outConflicts; void* topXid; int /*<<< orphan*/  finishedLink; int /*<<< orphan*/  predicateLocks; int /*<<< orphan*/  possibleUnsafeConflicts; TYPE_2__ SeqNo; int /*<<< orphan*/  finishedBefore; int /*<<< orphan*/  commitSeqNo; void* prepareSeqNo; scalar_t__ pid; TYPE_1__ vxid; } ;
struct TYPE_25__ {TYPE_9__* myXact; } ;
struct TYPE_24__ {void* xid; } ;
struct TYPE_17__ {scalar_t__ WritableSxactCount; int SxactGlobalXminCount; int /*<<< orphan*/  SxactGlobalXmin; } ;
typedef  TYPE_7__ SERIALIZABLEXIDTAG ;
typedef  TYPE_8__ SERIALIZABLEXID ;
typedef  TYPE_9__ SERIALIZABLEXACT ;
typedef  scalar_t__ LocalTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_9__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_9__*) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  InvalidSerCommitSeqNo ; 
 TYPE_9__* InvalidSerializableXact ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ MaxBackends ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_13__* PredXact ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* RecoverySerCommitSeqNo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SXACT_FLAG_SUMMARY_CONFLICT_IN ; 
 int /*<<< orphan*/  SXACT_FLAG_SUMMARY_CONFLICT_OUT ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  SerializableXidHash ; 
 int FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*) ; 
 scalar_t__ TWOPHASEPREDICATERECORD_LOCK ; 
 scalar_t__ TWOPHASEPREDICATERECORD_XACT ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ max_prepared_xacts ; 

void
FUNC18(TransactionId xid, uint16 info,
							   void *recdata, uint32 len)
{
	TwoPhasePredicateRecord *record;

	FUNC0(len == sizeof(TwoPhasePredicateRecord));

	record = (TwoPhasePredicateRecord *) recdata;

	FUNC0((record->type == TWOPHASEPREDICATERECORD_XACT) ||
		   (record->type == TWOPHASEPREDICATERECORD_LOCK));

	if (record->type == TWOPHASEPREDICATERECORD_XACT)
	{
		/* Per-transaction record. Set up a SERIALIZABLEXACT. */
		TwoPhasePredicateXactRecord *xactRecord;
		SERIALIZABLEXACT *sxact;
		SERIALIZABLEXID *sxid;
		SERIALIZABLEXIDTAG sxidtag;
		bool		found;

		xactRecord = (TwoPhasePredicateXactRecord *) &record->data.xactRecord;

		FUNC3(SerializableXactHashLock, LW_EXCLUSIVE);
		sxact = FUNC1();
		if (!sxact)
			FUNC14(ERROR,
					(FUNC15(ERRCODE_OUT_OF_MEMORY),
					 FUNC16("out of shared memory")));

		/* vxid for a prepared xact is InvalidBackendId/xid; no pid */
		sxact->vxid.backendId = InvalidBackendId;
		sxact->vxid.localTransactionId = (LocalTransactionId) xid;
		sxact->pid = 0;

		/* a prepared xact hasn't committed yet */
		sxact->prepareSeqNo = RecoverySerCommitSeqNo;
		sxact->commitSeqNo = InvalidSerCommitSeqNo;
		sxact->finishedBefore = InvalidTransactionId;

		sxact->SeqNo.lastCommitBeforeSnapshot = RecoverySerCommitSeqNo;

		/*
		 * Don't need to track this; no transactions running at the time the
		 * recovered xact started are still active, except possibly other
		 * prepared xacts and we don't care whether those are RO_SAFE or not.
		 */
		FUNC8(&(sxact->possibleUnsafeConflicts));

		FUNC8(&(sxact->predicateLocks));
		FUNC7(&(sxact->finishedLink));

		sxact->topXid = xid;
		sxact->xmin = xactRecord->xmin;
		sxact->flags = xactRecord->flags;
		FUNC0(FUNC9(sxact));
		if (!FUNC10(sxact))
		{
			++(PredXact->WritableSxactCount);
			FUNC0(PredXact->WritableSxactCount <=
				   (MaxBackends + max_prepared_xacts));
		}

		/*
		 * We don't know whether the transaction had any conflicts or not, so
		 * we'll conservatively assume that it had both a conflict in and a
		 * conflict out, and represent that with the summary conflict flags.
		 */
		FUNC8(&(sxact->outConflicts));
		FUNC8(&(sxact->inConflicts));
		sxact->flags |= SXACT_FLAG_SUMMARY_CONFLICT_IN;
		sxact->flags |= SXACT_FLAG_SUMMARY_CONFLICT_OUT;

		/* Register the transaction's xid */
		sxidtag.xid = xid;
		sxid = (SERIALIZABLEXID *) FUNC17(SerializableXidHash,
											   &sxidtag,
											   HASH_ENTER, &found);
		FUNC0(sxid != NULL);
		FUNC0(!found);
		sxid->myXact = (SERIALIZABLEXACT *) sxact;

		/*
		 * Update global xmin. Note that this is a special case compared to
		 * registering a normal transaction, because the global xmin might go
		 * backwards. That's OK, because until recovery is over we're not
		 * going to complete any transactions or create any non-prepared
		 * transactions, so there's no danger of throwing away.
		 */
		if ((!FUNC13(PredXact->SxactGlobalXmin)) ||
			(FUNC12(PredXact->SxactGlobalXmin, sxact->xmin)))
		{
			PredXact->SxactGlobalXmin = sxact->xmin;
			PredXact->SxactGlobalXminCount = 1;
			FUNC5(sxact->xmin);
		}
		else if (FUNC11(sxact->xmin, PredXact->SxactGlobalXmin))
		{
			FUNC0(PredXact->SxactGlobalXminCount > 0);
			PredXact->SxactGlobalXminCount++;
		}

		FUNC4(SerializableXactHashLock);
	}
	else if (record->type == TWOPHASEPREDICATERECORD_LOCK)
	{
		/* Lock record. Recreate the PREDICATELOCK */
		TwoPhasePredicateLockRecord *lockRecord;
		SERIALIZABLEXID *sxid;
		SERIALIZABLEXACT *sxact;
		SERIALIZABLEXIDTAG sxidtag;
		uint32		targettaghash;

		lockRecord = (TwoPhasePredicateLockRecord *) &record->data.lockRecord;
		targettaghash = FUNC6(&lockRecord->target);

		FUNC3(SerializableXactHashLock, LW_SHARED);
		sxidtag.xid = xid;
		sxid = (SERIALIZABLEXID *)
			FUNC17(SerializableXidHash, &sxidtag, HASH_FIND, NULL);
		FUNC4(SerializableXactHashLock);

		FUNC0(sxid != NULL);
		sxact = sxid->myXact;
		FUNC0(sxact != InvalidSerializableXact);

		FUNC2(&lockRecord->target, targettaghash, sxact);
	}
}