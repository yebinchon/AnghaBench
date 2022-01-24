#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_25__ {int /*<<< orphan*/  relId; int /*<<< orphan*/  dbId; } ;
struct TYPE_22__ {TYPE_4__ lockRelId; } ;
struct TYPE_24__ {TYPE_2__* rd_rel; TYPE_1__ rd_lockInfo; } ;
struct TYPE_23__ {scalar_t__ relkind; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ LockRelId ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_5__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  Anum_pg_index_indexprs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  INDEX_DROP_CLEAR_VALID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC35(Oid indexId, bool concurrent, bool concurrent_lock_mode)
{
	Oid			heapId;
	Relation	userHeapRelation;
	Relation	userIndexRelation;
	Relation	indexRelation;
	HeapTuple	tuple;
	bool		hasexprs;
	LockRelId	heaprelid,
				indexrelid;
	LOCKTAG		heaplocktag;
	LOCKMODE	lockmode;

	/*
	 * To drop an index safely, we must grab exclusive lock on its parent
	 * table.  Exclusive lock on the index alone is insufficient because
	 * another backend might be about to execute a query on the parent table.
	 * If it relies on a previously cached list of index OIDs, then it could
	 * attempt to access the just-dropped index.  We must therefore take a
	 * table lock strong enough to prevent all queries on the table from
	 * proceeding until we commit and send out a shared-cache-inval notice
	 * that will make them update their index lists.
	 *
	 * In the concurrent case we avoid this requirement by disabling index use
	 * in multiple steps and waiting out any transactions that might be using
	 * the index, so we don't need exclusive lock on the parent table. Instead
	 * we take ShareUpdateExclusiveLock, to ensure that two sessions aren't
	 * doing CREATE/DROP INDEX CONCURRENTLY on the same index.  (We will get
	 * AccessExclusiveLock on the index below, once we're sure nobody else is
	 * using it.)
	 */
	heapId = FUNC9(indexId, false);
	lockmode = (concurrent || concurrent_lock_mode) ? ShareUpdateExclusiveLock : AccessExclusiveLock;
	userHeapRelation = FUNC34(heapId, lockmode);
	userIndexRelation = FUNC31(indexId, lockmode);

	/*
	 * We might still have open queries using it in our own session, which the
	 * above locking won't prevent, so test explicitly.
	 */
	FUNC2(userIndexRelation, "DROP INDEX");

	/*
	 * Drop Index Concurrently is more or less the reverse process of Create
	 * Index Concurrently.
	 *
	 * First we unset indisvalid so queries starting afterwards don't use the
	 * index to answer queries anymore.  We have to keep indisready = true so
	 * transactions that are still scanning the index can continue to see
	 * valid index contents.  For instance, if they are using READ COMMITTED
	 * mode, and another transaction makes changes and commits, they need to
	 * see those new tuples in the index.
	 *
	 * After all transactions that could possibly have used the index for
	 * queries end, we can unset indisready and indislive, then wait till
	 * nobody could be touching it anymore.  (Note: we need indislive because
	 * this state must be distinct from the initial state during CREATE INDEX
	 * CONCURRENTLY, which has indislive true while indisready and indisvalid
	 * are false.  That's because in that state, transactions must examine the
	 * index for HOT-safety decisions, while in this state we don't want them
	 * to open it at all.)
	 *
	 * Since all predicate locks on the index are about to be made invalid, we
	 * must promote them to predicate locks on the heap.  In the
	 * non-concurrent case we can just do that now.  In the concurrent case
	 * it's a bit trickier.  The predicate locks must be moved when there are
	 * no index scans in progress on the index and no more can subsequently
	 * start, so that no new predicate locks can be made on the index.  Also,
	 * they must be moved before heap inserts stop maintaining the index, else
	 * the conflict with the predicate lock on the index gap could be missed
	 * before the lock on the heap relation is in place to detect a conflict
	 * based on the heap tuple insert.
	 */
	if (concurrent)
	{
		/*
		 * We must commit our transaction in order to make the first pg_index
		 * state update visible to other sessions.  If the DROP machinery has
		 * already performed any other actions (removal of other objects,
		 * pg_depend entries, etc), the commit would make those actions
		 * permanent, which would leave us with inconsistent catalog state if
		 * we fail partway through the following sequence.  Since DROP INDEX
		 * CONCURRENTLY is restricted to dropping just one index that has no
		 * dependencies, we should get here before anything's been done ---
		 * but let's check that to be sure.  We can verify that the current
		 * transaction has not executed any transactional updates by checking
		 * that no XID has been assigned.
		 */
		if (FUNC7() != InvalidTransactionId)
			FUNC25(ERROR,
					(FUNC26(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC27("DROP INDEX CONCURRENTLY must be first action in transaction")));

		/*
		 * Mark index invalid by updating its pg_index entry
		 */
		FUNC32(indexId, INDEX_DROP_CLEAR_VALID);

		/*
		 * Invalidate the relcache for the table, so that after this commit
		 * all sessions will refresh any cached plans that might reference the
		 * index.
		 */
		FUNC0(userHeapRelation);

		/* save lockrelid and locktag for below, then close but keep locks */
		heaprelid = userHeapRelation->rd_lockInfo.lockRelId;
		FUNC18(heaplocktag, heaprelid.dbId, heaprelid.relId);
		indexrelid = userIndexRelation->rd_lockInfo.lockRelId;

		FUNC33(userHeapRelation, NoLock);
		FUNC29(userIndexRelation, NoLock);

		/*
		 * We must commit our current transaction so that the indisvalid
		 * update becomes visible to other transactions; then start another.
		 * Note that any previously-built data structures are lost in the
		 * commit.  The only data we keep past here are the relation IDs.
		 *
		 * Before committing, get a session-level lock on the table, to ensure
		 * that neither it nor the index can be dropped before we finish. This
		 * cannot block, even if someone else is waiting for access, because
		 * we already have the same lock within our transaction.
		 */
		FUNC10(&heaprelid, ShareUpdateExclusiveLock);
		FUNC10(&indexrelid, ShareUpdateExclusiveLock);

		FUNC12();
		FUNC3();
		FUNC20();

		/*
		 * Now we must wait until no running transaction could be using the
		 * index for a query.  Use AccessExclusiveLock here to check for
		 * running transactions that hold locks of any kind on the table. Note
		 * we do not need to worry about xacts that open the table for reading
		 * after this point; they will see the index as invalid when they open
		 * the relation.
		 *
		 * Note: the reason we use actual lock acquisition here, rather than
		 * just checking the ProcArray and sleeping, is that deadlock is
		 * possible if one of the transactions in question is blocked trying
		 * to acquire an exclusive lock on our table.  The lock code will
		 * detect deadlock and error out properly.
		 *
		 * Note: we report progress through WaitForLockers() unconditionally
		 * here, even though it will only be used when we're called by REINDEX
		 * CONCURRENTLY and not when called by DROP INDEX CONCURRENTLY.
		 */
		FUNC23(heaplocktag, AccessExclusiveLock, true);

		/* Finish invalidation of index and mark it as dead */
		FUNC30(heapId, indexId);

		/*
		 * Again, commit the transaction to make the pg_index update visible
		 * to other sessions.
		 */
		FUNC3();
		FUNC20();

		/*
		 * Wait till every transaction that saw the old index state has
		 * finished.  See above about progress reporting.
		 */
		FUNC23(heaplocktag, AccessExclusiveLock, true);

		/*
		 * Re-open relations to allow us to complete our actions.
		 *
		 * At this point, nothing should be accessing the index, but lets
		 * leave nothing to chance and grab AccessExclusiveLock on the index
		 * before the physical deletion.
		 */
		userHeapRelation = FUNC34(heapId, ShareUpdateExclusiveLock);
		userIndexRelation = FUNC31(indexId, AccessExclusiveLock);
	}
	else
	{
		/* Not concurrent, so just transfer predicate locks and we're good */
		FUNC21(userIndexRelation);
	}

	/*
	 * Schedule physical removal of the files (if any)
	 */
	if (userIndexRelation->rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
		FUNC13(userIndexRelation);

	/*
	 * Close and flush the index's relcache entry, to ensure relcache doesn't
	 * try to rebuild it while we're deleting catalog entries. We keep the
	 * lock though.
	 */
	FUNC29(userIndexRelation, NoLock);

	FUNC14(indexId);

	/*
	 * fix INDEX relation, and check for expressional index
	 */
	indexRelation = FUNC34(IndexRelationId, RowExclusiveLock);

	tuple = FUNC19(INDEXRELID, FUNC11(indexId));
	if (!FUNC8(tuple))
		FUNC24(ERROR, "cache lookup failed for index %u", indexId);

	hasexprs = !FUNC28(tuple, Anum_pg_index_indexprs,
							   FUNC15(indexRelation));

	FUNC1(indexRelation, &tuple->t_self);

	FUNC16(tuple);
	FUNC33(indexRelation, RowExclusiveLock);

	/*
	 * if it has any expression columns, we might have stored statistics about
	 * them.
	 */
	if (hasexprs)
		FUNC17(indexId, 0);

	/*
	 * fix ATTRIBUTE relation
	 */
	FUNC4(indexId);

	/*
	 * fix RELATION relation
	 */
	FUNC6(indexId);

	/*
	 * fix INHERITS relation
	 */
	FUNC5(indexId, InvalidOid);

	/*
	 * We are presently too lazy to attempt to compute the new correct value
	 * of relhasindex (the next VACUUM will fix it if necessary). So there is
	 * no need to update the pg_class tuple for the owning relation. But we
	 * must send out a shared-cache-inval notice on the owning relation to
	 * ensure other backends update their relcache lists of indexes.  (In the
	 * concurrent case, this is redundant but harmless.)
	 */
	FUNC0(userHeapRelation);

	/*
	 * Close owning rel, but keep lock
	 */
	FUNC33(userHeapRelation, NoLock);

	/*
	 * Release the session locks before we go.
	 */
	if (concurrent)
	{
		FUNC22(&heaprelid, ShareUpdateExclusiveLock);
		FUNC22(&indexrelid, ShareUpdateExclusiveLock);
	}
}