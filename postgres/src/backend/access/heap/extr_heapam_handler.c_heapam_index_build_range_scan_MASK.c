#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_9__ ;
typedef  struct TYPE_42__   TYPE_8__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  TYPE_3__* TableScanDesc ;
struct TYPE_37__ {int /*<<< orphan*/ * rs_parallel; } ;
struct TYPE_43__ {scalar_t__ rs_nblocks; scalar_t__ rs_cblock; TYPE_2__ rs_base; int /*<<< orphan*/  rs_cbuf; } ;
struct TYPE_42__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_data; } ;
struct TYPE_41__ {int ii_BrokenHotChain; int /*<<< orphan*/ * ii_PredicateState; int /*<<< orphan*/  ii_ExpressionsState; int /*<<< orphan*/  ii_Concurrent; int /*<<< orphan*/  ii_Predicate; int /*<<< orphan*/ * ii_ExclusionOps; scalar_t__ ii_Unique; } ;
struct TYPE_40__ {scalar_t__ phs_nblocks; } ;
struct TYPE_39__ {TYPE_1__* rd_rel; } ;
struct TYPE_38__ {scalar_t__ rs_snapshot; } ;
struct TYPE_36__ {int /*<<< orphan*/  relam; } ;
struct TYPE_35__ {int /*<<< orphan*/  ecxt_per_tuple_memory; int /*<<< orphan*/ * ecxt_scantuple; } ;
typedef  scalar_t__ Snapshot ;
typedef  TYPE_4__* Relation ;
typedef  TYPE_5__* ParallelBlockTableScanDesc ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_6__ IndexInfo ;
typedef  int /*<<< orphan*/  (* IndexBuildCallback ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,void*) ;
typedef  TYPE_8__* HeapTuple ;
typedef  TYPE_9__* HeapScanDesc ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_10__ ExprContext ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
#define  HEAPTUPLE_DEAD 132 
#define  HEAPTUPLE_DELETE_IN_PROGRESS 131 
#define  HEAPTUPLE_INSERT_IN_PROGRESS 130 
#define  HEAPTUPLE_LIVE 129 
#define  HEAPTUPLE_RECENTLY_DEAD 128 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*) ; 
 int FUNC17 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INDEX_MAX_KEYS ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 int FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MaxHeapTuplesPerPage ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCARRAY_FLAGS_VACUUM ; 
 int /*<<< orphan*/  PROGRESS_SCAN_BLOCKS_DONE ; 
 int /*<<< orphan*/  PROGRESS_SCAN_BLOCKS_TOTAL ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*) ; 
 scalar_t__ SnapshotAny ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  XLTW_InsertIndexUnique ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int*) ; 
 TYPE_8__* FUNC39 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC41 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC43 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC45 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static double
FUNC46(Relation heapRelation,
							  Relation indexRelation,
							  IndexInfo *indexInfo,
							  bool allow_sync,
							  bool anyvisible,
							  bool progress,
							  BlockNumber start_blockno,
							  BlockNumber numblocks,
							  IndexBuildCallback callback,
							  void *callback_state,
							  TableScanDesc scan)
{
	HeapScanDesc hscan;
	bool		is_system_catalog;
	bool		checking_uniqueness;
	HeapTuple	heapTuple;
	Datum		values[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];
	double		reltuples;
	ExprState  *predicate;
	TupleTableSlot *slot;
	EState	   *estate;
	ExprContext *econtext;
	Snapshot	snapshot;
	bool		need_unregister_snapshot = false;
	TransactionId OldestXmin;
	BlockNumber previous_blkno = InvalidBlockNumber;
	BlockNumber root_blkno = InvalidBlockNumber;
	OffsetNumber root_offsets[MaxHeapTuplesPerPage];

	/*
	 * sanity checks
	 */
	FUNC0(FUNC27(indexRelation->rd_rel->relam));

	/* Remember if it's a system catalog */
	is_system_catalog = FUNC20(heapRelation);

	/* See whether we're verifying uniqueness/exclusion properties */
	checking_uniqueness = (indexInfo->ii_Unique ||
						   indexInfo->ii_ExclusionOps != NULL);

	/*
	 * "Any visible" mode is not compatible with uniqueness checks; make sure
	 * only one of those is requested.
	 */
	FUNC0(!(anyvisible && checking_uniqueness));

	/*
	 * Need an EState for evaluation of index expressions and partial-index
	 * predicates.  Also a slot to hold the current tuple.
	 */
	estate = FUNC3();
	econtext = FUNC11(estate);
	slot = FUNC45(heapRelation, NULL);

	/* Arrange for econtext's scan tuple to be the tuple under test */
	econtext->ecxt_scantuple = slot;

	/* Set up execution state for predicate, if any. */
	predicate = FUNC5(indexInfo->ii_Predicate, estate);

	/*
	 * Prepare for scan of the base relation.  In a normal index build, we use
	 * SnapshotAny because we must retrieve all tuples and do our own time
	 * qual checks (because we have to index RECENTLY_DEAD tuples). In a
	 * concurrent build, or during bootstrap, we take a regular MVCC snapshot
	 * and index whatever's live according to that.
	 */
	OldestXmin = InvalidTransactionId;

	/* okay to ignore lazy VACUUMs here */
	if (!FUNC18() && !indexInfo->ii_Concurrent)
		OldestXmin = FUNC10(heapRelation, PROCARRAY_FLAGS_VACUUM);

	if (!scan)
	{
		/*
		 * Serial index build.
		 *
		 * Must begin our own heap scan in this case.  We may also need to
		 * register a snapshot whose lifetime is under our direct control.
		 */
		if (!FUNC31(OldestXmin))
		{
			snapshot = FUNC28(FUNC12());
			need_unregister_snapshot = true;
		}
		else
			snapshot = SnapshotAny;

		scan = FUNC43(heapRelation,	/* relation */
									 snapshot,	/* snapshot */
									 0, /* number of keys */
									 NULL,	/* scan key */
									 true,	/* buffer access strategy OK */
									 allow_sync);	/* syncscan OK? */
	}
	else
	{
		/*
		 * Parallel index build.
		 *
		 * Parallel case never registers/unregisters own snapshot.  Snapshot
		 * is taken from parallel heap scan, and is SnapshotAny or an MVCC
		 * snapshot, based on same criteria as serial case.
		 */
		FUNC0(!FUNC18());
		FUNC0(allow_sync);
		snapshot = scan->rs_snapshot;
	}

	hscan = (HeapScanDesc) scan;

	/* Publish number of blocks to scan */
	if (progress)
	{
		BlockNumber nblocks;

		if (hscan->rs_base.rs_parallel != NULL)
		{
			ParallelBlockTableScanDesc pbscan;

			pbscan = (ParallelBlockTableScanDesc) hscan->rs_base.rs_parallel;
			nblocks = pbscan->phs_nblocks;
		}
		else
			nblocks = hscan->rs_nblocks;

		FUNC42(PROGRESS_SCAN_BLOCKS_TOTAL,
									 nblocks);
	}

	/*
	 * Must call GetOldestXmin() with SnapshotAny.  Should never call
	 * GetOldestXmin() with MVCC snapshot. (It's especially worth checking
	 * this for parallel builds, since ambuild routines that support parallel
	 * builds must work these details out for themselves.)
	 */
	FUNC0(snapshot == SnapshotAny || FUNC19(snapshot));
	FUNC0(snapshot == SnapshotAny ? FUNC31(OldestXmin) :
		   !FUNC31(OldestXmin));
	FUNC0(snapshot == SnapshotAny || !anyvisible);

	/* set our scan endpoints */
	if (!allow_sync)
		FUNC40(scan, start_blockno, numblocks);
	else
	{
		/* syncscan can only be requested on whole relation */
		FUNC0(start_blockno == 0);
		FUNC0(numblocks == InvalidBlockNumber);
	}

	reltuples = 0;

	/*
	 * Scan all tuples in the base relation.
	 */
	while ((heapTuple = FUNC39(scan, ForwardScanDirection)) != NULL)
	{
		bool		tupleIsAlive;

		FUNC2();

		/* Report scan progress, if asked to. */
		if (progress)
		{
			BlockNumber blocks_done = FUNC41(hscan);

			if (blocks_done != previous_blkno)
			{
				FUNC42(PROGRESS_SCAN_BLOCKS_DONE,
											 blocks_done);
				previous_blkno = blocks_done;
			}
		}

		/*
		 * When dealing with a HOT-chain of updated tuples, we want to index
		 * the values of the live tuple (if any), but index it under the TID
		 * of the chain's root tuple.  This approach is necessary to preserve
		 * the HOT-chain structure in the heap. So we need to be able to find
		 * the root item offset for every tuple that's in a HOT-chain.  When
		 * first reaching a new page of the relation, call
		 * heap_get_root_tuples() to build a map of root item offsets on the
		 * page.
		 *
		 * It might look unsafe to use this information across buffer
		 * lock/unlock.  However, we hold ShareLock on the table so no
		 * ordinary insert/update/delete should occur; and we hold pin on the
		 * buffer continuously while visiting the page, so no pruning
		 * operation can occur either.
		 *
		 * Also, although our opinions about tuple liveness could change while
		 * we scan the page (due to concurrent transaction commits/aborts),
		 * the chain root locations won't, so this info doesn't need to be
		 * rebuilt after waiting for another transaction.
		 *
		 * Note the implied assumption that there is no more than one live
		 * tuple per HOT-chain --- else we could create more than one index
		 * entry pointing to the same root tuple.
		 */
		if (hscan->rs_cblock != root_blkno)
		{
			Page		page = FUNC1(hscan->rs_cbuf);

			FUNC24(hscan->rs_cbuf, BUFFER_LOCK_SHARE);
			FUNC38(page, root_offsets);
			FUNC24(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

			root_blkno = hscan->rs_cblock;
		}

		if (snapshot == SnapshotAny)
		{
			/* do our own time qual check */
			bool		indexIt;
			TransactionId xwait;

	recheck:

			/*
			 * We could possibly get away with not locking the buffer here,
			 * since caller should hold ShareLock on the relation, but let's
			 * be conservative about it.  (This remark is still correct even
			 * with HOT-pruning: our pin on the buffer prevents pruning.)
			 */
			FUNC24(hscan->rs_cbuf, BUFFER_LOCK_SHARE);

			/*
			 * The criteria for counting a tuple as live in this block need to
			 * match what analyze.c's heapam_scan_analyze_next_tuple() does,
			 * otherwise CREATE INDEX and ANALYZE may produce wildly different
			 * reltuples values, e.g. when there are many recently-dead
			 * tuples.
			 */
			switch (FUNC17(heapTuple, OldestXmin,
											 hscan->rs_cbuf))
			{
				case HEAPTUPLE_DEAD:
					/* Definitely dead, we can ignore it */
					indexIt = false;
					tupleIsAlive = false;
					break;
				case HEAPTUPLE_LIVE:
					/* Normal case, index and unique-check it */
					indexIt = true;
					tupleIsAlive = true;
					/* Count it as live, too */
					reltuples += 1;
					break;
				case HEAPTUPLE_RECENTLY_DEAD:

					/*
					 * If tuple is recently deleted then we must index it
					 * anyway to preserve MVCC semantics.  (Pre-existing
					 * transactions could try to use the index after we finish
					 * building it, and may need to see such tuples.)
					 *
					 * However, if it was HOT-updated then we must only index
					 * the live tuple at the end of the HOT-chain.  Since this
					 * breaks semantics for pre-existing snapshots, mark the
					 * index as unusable for them.
					 *
					 * We don't count recently-dead tuples in reltuples, even
					 * if we index them; see heapam_scan_analyze_next_tuple().
					 */
					if (FUNC16(heapTuple))
					{
						indexIt = false;
						/* mark the index as unsafe for old snapshots */
						indexInfo->ii_BrokenHotChain = true;
					}
					else
						indexIt = true;
					/* In any case, exclude the tuple from unique-checking */
					tupleIsAlive = false;
					break;
				case HEAPTUPLE_INSERT_IN_PROGRESS:

					/*
					 * In "anyvisible" mode, this tuple is visible and we
					 * don't need any further checks.
					 */
					if (anyvisible)
					{
						indexIt = true;
						tupleIsAlive = true;
						reltuples += 1;
						break;
					}

					/*
					 * Since caller should hold ShareLock or better, normally
					 * the only way to see this is if it was inserted earlier
					 * in our own transaction.  However, it can happen in
					 * system catalogs, since we tend to release write lock
					 * before commit there.  Give a warning if neither case
					 * applies.
					 */
					xwait = FUNC14(heapTuple->t_data);
					if (!FUNC30(xwait))
					{
						if (!is_system_catalog)
							FUNC34(WARNING, "concurrent insert in progress within table \"%s\"",
								 FUNC29(heapRelation));

						/*
						 * If we are performing uniqueness checks, indexing
						 * such a tuple could lead to a bogus uniqueness
						 * failure.  In that case we wait for the inserting
						 * transaction to finish and check again.
						 */
						if (checking_uniqueness)
						{
							/*
							 * Must drop the lock on the buffer before we wait
							 */
							FUNC24(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);
							FUNC33(xwait, heapRelation,
											  &heapTuple->t_self,
											  XLTW_InsertIndexUnique);
							FUNC2();
							goto recheck;
						}
					}
					else
					{
						/*
						 * For consistency with
						 * heapam_scan_analyze_next_tuple(), count
						 * HEAPTUPLE_INSERT_IN_PROGRESS tuples as live only
						 * when inserted by our own transaction.
						 */
						reltuples += 1;
					}

					/*
					 * We must index such tuples, since if the index build
					 * commits then they're good.
					 */
					indexIt = true;
					tupleIsAlive = true;
					break;
				case HEAPTUPLE_DELETE_IN_PROGRESS:

					/*
					 * As with INSERT_IN_PROGRESS case, this is unexpected
					 * unless it's our own deletion or a system catalog; but
					 * in anyvisible mode, this tuple is visible.
					 */
					if (anyvisible)
					{
						indexIt = true;
						tupleIsAlive = false;
						reltuples += 1;
						break;
					}

					xwait = FUNC13(heapTuple->t_data);
					if (!FUNC30(xwait))
					{
						if (!is_system_catalog)
							FUNC34(WARNING, "concurrent delete in progress within table \"%s\"",
								 FUNC29(heapRelation));

						/*
						 * If we are performing uniqueness checks, assuming
						 * the tuple is dead could lead to missing a
						 * uniqueness violation.  In that case we wait for the
						 * deleting transaction to finish and check again.
						 *
						 * Also, if it's a HOT-updated tuple, we should not
						 * index it but rather the live tuple at the end of
						 * the HOT-chain.  However, the deleting transaction
						 * could abort, possibly leaving this tuple as live
						 * after all, in which case it has to be indexed. The
						 * only way to know what to do is to wait for the
						 * deleting transaction to finish and check again.
						 */
						if (checking_uniqueness ||
							FUNC16(heapTuple))
						{
							/*
							 * Must drop the lock on the buffer before we wait
							 */
							FUNC24(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);
							FUNC33(xwait, heapRelation,
											  &heapTuple->t_self,
											  XLTW_InsertIndexUnique);
							FUNC2();
							goto recheck;
						}

						/*
						 * Otherwise index it but don't check for uniqueness,
						 * the same as a RECENTLY_DEAD tuple.
						 */
						indexIt = true;

						/*
						 * Count HEAPTUPLE_DELETE_IN_PROGRESS tuples as live,
						 * if they were not deleted by the current
						 * transaction.  That's what
						 * heapam_scan_analyze_next_tuple() does, and we want
						 * the behavior to be consistent.
						 */
						reltuples += 1;
					}
					else if (FUNC16(heapTuple))
					{
						/*
						 * It's a HOT-updated tuple deleted by our own xact.
						 * We can assume the deletion will commit (else the
						 * index contents don't matter), so treat the same as
						 * RECENTLY_DEAD HOT-updated tuples.
						 */
						indexIt = false;
						/* mark the index as unsafe for old snapshots */
						indexInfo->ii_BrokenHotChain = true;
					}
					else
					{
						/*
						 * It's a regular tuple deleted by our own xact. Index
						 * it, but don't check for uniqueness nor count in
						 * reltuples, the same as a RECENTLY_DEAD tuple.
						 */
						indexIt = true;
					}
					/* In any case, exclude the tuple from unique-checking */
					tupleIsAlive = false;
					break;
				default:
					FUNC34(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
					indexIt = tupleIsAlive = false; /* keep compiler quiet */
					break;
			}

			FUNC24(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

			if (!indexIt)
				continue;
		}
		else
		{
			/* heap_getnext did the time qual check */
			tupleIsAlive = true;
			reltuples += 1;
		}

		FUNC25(econtext->ecxt_per_tuple_memory);

		/* Set up for predicate or expression evaluation */
		FUNC7(heapTuple, slot, hscan->rs_cbuf);

		/*
		 * In a partial index, discard tuples that don't satisfy the
		 * predicate.
		 */
		if (predicate != NULL)
		{
			if (!FUNC6(predicate, econtext))
				continue;
		}

		/*
		 * For the current heap tuple, extract all the attributes we use in
		 * this index, and note which are null.  This also performs evaluation
		 * of any expressions needed.
		 */
		FUNC8(indexInfo,
					   slot,
					   estate,
					   values,
					   isnull);

		/*
		 * You'd think we should go ahead and build the index tuple here, but
		 * some index AMs want to do further processing on the data first.  So
		 * pass the values[] and isnull[] arrays, instead.
		 */

		if (FUNC15(heapTuple))
		{
			/*
			 * For a heap-only tuple, pretend its TID is that of the root. See
			 * src/backend/access/heap/README.HOT for discussion.
			 */
			ItemPointerData tid;
			OffsetNumber offnum;

			offnum = FUNC22(&heapTuple->t_self);

			if (!FUNC26(root_offsets[offnum - 1]))
				FUNC35(ERROR,
						(FUNC36(ERRCODE_DATA_CORRUPTED),
						 FUNC37("failed to find parent tuple for heap-only tuple at (%u,%u) in table \"%s\"",
										 FUNC21(&heapTuple->t_self),
										 offnum,
										 FUNC29(heapRelation))));

			FUNC23(&tid, FUNC21(&heapTuple->t_self),
						   root_offsets[offnum - 1]);

			/* Call the AM's callback routine to process the tuple */
			callback(indexRelation, &tid, values, isnull, tupleIsAlive,
					 callback_state);
		}
		else
		{
			/* Call the AM's callback routine to process the tuple */
			callback(indexRelation, &heapTuple->t_self, values, isnull,
					 tupleIsAlive, callback_state);
		}
	}

	/* Report scan progress one last time. */
	if (progress)
	{
		BlockNumber blks_done;

		if (hscan->rs_base.rs_parallel != NULL)
		{
			ParallelBlockTableScanDesc pbscan;

			pbscan = (ParallelBlockTableScanDesc) hscan->rs_base.rs_parallel;
			blks_done = pbscan->phs_nblocks;
		}
		else
			blks_done = hscan->rs_nblocks;

		FUNC42(PROGRESS_SCAN_BLOCKS_DONE,
									 blks_done);
	}

	FUNC44(scan);

	/* we can now forget our snapshot, if set and registered by us */
	if (need_unregister_snapshot)
		FUNC32(snapshot);

	FUNC4(slot);

	FUNC9(estate);

	/* These may have been pointing to the now-gone estate */
	indexInfo->ii_ExpressionsState = NIL;
	indexInfo->ii_PredicateState = NULL;

	return reltuples;
}