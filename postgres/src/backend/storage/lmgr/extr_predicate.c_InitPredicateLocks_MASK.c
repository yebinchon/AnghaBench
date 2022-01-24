#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_12__ {scalar_t__ lastCommitBeforeSnapshot; } ;
struct TYPE_17__ {scalar_t__ pid; int /*<<< orphan*/  flags; void* xmin; void* finishedBefore; void* topXid; int /*<<< orphan*/  possibleUnsafeConflicts; int /*<<< orphan*/  finishedLink; int /*<<< orphan*/  predicateLocks; int /*<<< orphan*/  inConflicts; int /*<<< orphan*/  outConflicts; TYPE_2__ SeqNo; scalar_t__ commitSeqNo; scalar_t__ prepareSeqNo; int /*<<< orphan*/  vxid; } ;
struct TYPE_16__ {TYPE_8__* OldCommittedSxact; TYPE_4__* element; int /*<<< orphan*/  availableList; scalar_t__ HavePartialClearedThrough; scalar_t__ CanPartialClearThrough; scalar_t__ LastSxactCommitSeqNo; scalar_t__ WritableSxactCount; scalar_t__ SxactGlobalXminCount; void* SxactGlobalXmin; int /*<<< orphan*/  activeList; } ;
struct TYPE_15__ {TYPE_4__* element; int /*<<< orphan*/  availableList; } ;
struct TYPE_11__ {int /*<<< orphan*/  predicateLockListLock; } ;
struct TYPE_14__ {int /*<<< orphan*/  outLink; int /*<<< orphan*/  link; TYPE_1__ sxact; } ;
struct TYPE_13__ {int keysize; int entrysize; void* num_partitions; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  SHM_QUEUE ;
typedef  int /*<<< orphan*/  SERIALIZABLEXIDTAG ;
typedef  int /*<<< orphan*/  SERIALIZABLEXID ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGET ;
typedef  int /*<<< orphan*/  PREDICATELOCKTAG ;
typedef  int /*<<< orphan*/  PREDICATELOCK ;
typedef  TYPE_3__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_8__* FUNC1 () ; 
 int /*<<< orphan*/ * FinishedSerializableTransactions ; 
 scalar_t__ FirstNormalSerCommitSeqNo ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int HASH_FIXED_SIZE ; 
 int HASH_FUNCTION ; 
 int HASH_PARTITION ; 
 void* InvalidTransactionId ; 
 int IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWTRANCHE_SXACT ; 
 long MaxBackends ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 long FUNC4 () ; 
 void* NUM_PREDICATELOCK_PARTITIONS ; 
 TYPE_8__* OldCommittedSxact ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_7__* PredXact ; 
 int PredXactListDataSize ; 
 int /*<<< orphan*/  PredXactListElementDataSize ; 
 void* PredicateLockHash ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* PredicateLockTargetHash ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RWConflictDataSize ; 
 TYPE_6__* RWConflictPool ; 
 int RWConflictPoolHeaderDataSize ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SXACT_FLAG_COMMITTED ; 
 int /*<<< orphan*/  ScratchPartitionLock ; 
 int /*<<< orphan*/  ScratchTargetTag ; 
 int /*<<< orphan*/  ScratchTargetTagHash ; 
 void* SerializableXidHash ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (char*,long,long,TYPE_3__*,int) ; 
 void* FUNC13 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 long max_prepared_xacts ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  predicatelock_hash ; 

void
FUNC17(void)
{
	HASHCTL		info;
	long		max_table_size;
	Size		requestSize;
	bool		found;

#ifndef EXEC_BACKEND
	FUNC0(!IsUnderPostmaster);
#endif

	/*
	 * Compute size of predicate lock target hashtable. Note these
	 * calculations must agree with PredicateLockShmemSize!
	 */
	max_table_size = FUNC4();

	/*
	 * Allocate hash table for PREDICATELOCKTARGET structs.  This stores
	 * per-predicate-lock-target information.
	 */
	FUNC3(&info, 0, sizeof(info));
	info.keysize = sizeof(PREDICATELOCKTARGETTAG);
	info.entrysize = sizeof(PREDICATELOCKTARGET);
	info.num_partitions = NUM_PREDICATELOCK_PARTITIONS;

	PredicateLockTargetHash = FUNC12("PREDICATELOCKTARGET hash",
											max_table_size,
											max_table_size,
											&info,
											HASH_ELEM | HASH_BLOBS |
											HASH_PARTITION | HASH_FIXED_SIZE);

	/*
	 * Reserve a dummy entry in the hash table; we use it to make sure there's
	 * always one entry available when we need to split or combine a page,
	 * because running out of space there could mean aborting a
	 * non-serializable transaction.
	 */
	if (!IsUnderPostmaster)
	{
		(void) FUNC14(PredicateLockTargetHash, &ScratchTargetTag,
						   HASH_ENTER, &found);
		FUNC0(!found);
	}

	/* Pre-calculate the hash and partition lock of the scratch entry */
	ScratchTargetTagHash = FUNC7(&ScratchTargetTag);
	ScratchPartitionLock = FUNC6(ScratchTargetTagHash);

	/*
	 * Allocate hash table for PREDICATELOCK structs.  This stores per
	 * xact-lock-of-a-target information.
	 */
	FUNC3(&info, 0, sizeof(info));
	info.keysize = sizeof(PREDICATELOCKTAG);
	info.entrysize = sizeof(PREDICATELOCK);
	info.hash = predicatelock_hash;
	info.num_partitions = NUM_PREDICATELOCK_PARTITIONS;

	/* Assume an average of 2 xacts per target */
	max_table_size *= 2;

	PredicateLockHash = FUNC12("PREDICATELOCK hash",
									  max_table_size,
									  max_table_size,
									  &info,
									  HASH_ELEM | HASH_FUNCTION |
									  HASH_PARTITION | HASH_FIXED_SIZE);

	/*
	 * Compute size for serializable transaction hashtable. Note these
	 * calculations must agree with PredicateLockShmemSize!
	 */
	max_table_size = (MaxBackends + max_prepared_xacts);

	/*
	 * Allocate a list to hold information on transactions participating in
	 * predicate locking.
	 *
	 * Assume an average of 10 predicate locking transactions per backend.
	 * This allows aggressive cleanup while detail is present before data must
	 * be summarized for storage in SLRU and the "dummy" transaction.
	 */
	max_table_size *= 10;

	PredXact = FUNC13("PredXactList",
							   PredXactListDataSize,
							   &found);
	FUNC0(found == IsUnderPostmaster);
	if (!found)
	{
		int			i;

		FUNC8(&PredXact->availableList);
		FUNC8(&PredXact->activeList);
		PredXact->SxactGlobalXmin = InvalidTransactionId;
		PredXact->SxactGlobalXminCount = 0;
		PredXact->WritableSxactCount = 0;
		PredXact->LastSxactCommitSeqNo = FirstNormalSerCommitSeqNo - 1;
		PredXact->CanPartialClearThrough = 0;
		PredXact->HavePartialClearedThrough = 0;
		requestSize = FUNC16((Size) max_table_size,
							   PredXactListElementDataSize);
		PredXact->element = FUNC11(requestSize);
		/* Add all elements to available list, clean. */
		FUNC15(PredXact->element, 0, requestSize);
		for (i = 0; i < max_table_size; i++)
		{
			FUNC2(&PredXact->element[i].sxact.predicateLockListLock,
							 LWTRANCHE_SXACT);
			FUNC9(&(PredXact->availableList),
								 &(PredXact->element[i].link));
		}
		PredXact->OldCommittedSxact = FUNC1();
		FUNC10(PredXact->OldCommittedSxact->vxid);
		PredXact->OldCommittedSxact->prepareSeqNo = 0;
		PredXact->OldCommittedSxact->commitSeqNo = 0;
		PredXact->OldCommittedSxact->SeqNo.lastCommitBeforeSnapshot = 0;
		FUNC8(&PredXact->OldCommittedSxact->outConflicts);
		FUNC8(&PredXact->OldCommittedSxact->inConflicts);
		FUNC8(&PredXact->OldCommittedSxact->predicateLocks);
		FUNC8(&PredXact->OldCommittedSxact->finishedLink);
		FUNC8(&PredXact->OldCommittedSxact->possibleUnsafeConflicts);
		PredXact->OldCommittedSxact->topXid = InvalidTransactionId;
		PredXact->OldCommittedSxact->finishedBefore = InvalidTransactionId;
		PredXact->OldCommittedSxact->xmin = InvalidTransactionId;
		PredXact->OldCommittedSxact->flags = SXACT_FLAG_COMMITTED;
		PredXact->OldCommittedSxact->pid = 0;
	}
	/* This never changes, so let's keep a local copy. */
	OldCommittedSxact = PredXact->OldCommittedSxact;

	/*
	 * Allocate hash table for SERIALIZABLEXID structs.  This stores per-xid
	 * information for serializable transactions which have accessed data.
	 */
	FUNC3(&info, 0, sizeof(info));
	info.keysize = sizeof(SERIALIZABLEXIDTAG);
	info.entrysize = sizeof(SERIALIZABLEXID);

	SerializableXidHash = FUNC12("SERIALIZABLEXID hash",
										max_table_size,
										max_table_size,
										&info,
										HASH_ELEM | HASH_BLOBS |
										HASH_FIXED_SIZE);

	/*
	 * Allocate space for tracking rw-conflicts in lists attached to the
	 * transactions.
	 *
	 * Assume an average of 5 conflicts per transaction.  Calculations suggest
	 * that this will prevent resource exhaustion in even the most pessimal
	 * loads up to max_connections = 200 with all 200 connections pounding the
	 * database with serializable transactions.  Beyond that, there may be
	 * occasional transactions canceled when trying to flag conflicts. That's
	 * probably OK.
	 */
	max_table_size *= 5;

	RWConflictPool = FUNC13("RWConflictPool",
									 RWConflictPoolHeaderDataSize,
									 &found);
	FUNC0(found == IsUnderPostmaster);
	if (!found)
	{
		int			i;

		FUNC8(&RWConflictPool->availableList);
		requestSize = FUNC16((Size) max_table_size,
							   RWConflictDataSize);
		RWConflictPool->element = FUNC11(requestSize);
		/* Add all elements to available list, clean. */
		FUNC15(RWConflictPool->element, 0, requestSize);
		for (i = 0; i < max_table_size; i++)
		{
			FUNC9(&(RWConflictPool->availableList),
								 &(RWConflictPool->element[i].outLink));
		}
	}

	/*
	 * Create or attach to the header for the list of finished serializable
	 * transactions.
	 */
	FinishedSerializableTransactions = (SHM_QUEUE *)
		FUNC13("FinishedSerializableTransactions",
						sizeof(SHM_QUEUE),
						&found);
	FUNC0(found == IsUnderPostmaster);
	if (!found)
		FUNC8(FinishedSerializableTransactions);

	/*
	 * Initialize the SLRU storage for old committed serializable
	 * transactions.
	 */
	FUNC5();
}