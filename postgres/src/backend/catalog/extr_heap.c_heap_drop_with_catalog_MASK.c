#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ relispartition; } ;
struct TYPE_19__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNTABLEREL ; 
 int /*<<< orphan*/  ForeignTableRelationId ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_VIEW ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__) ; 

void
FUNC28(Oid relid)
{
	Relation	rel;
	HeapTuple	tuple;
	Oid			parentOid = InvalidOid,
				defaultPartOid = InvalidOid;

	/*
	 * To drop a partition safely, we must grab exclusive lock on its parent,
	 * because another backend might be about to execute a query on the parent
	 * table.  If it relies on previously cached partition descriptor, then it
	 * could attempt to access the just-dropped relation as its partition. We
	 * must therefore take a table lock strong enough to prevent all queries
	 * on the table from proceeding until we commit and send out a
	 * shared-cache-inval notice that will make them update their partition
	 * descriptors.
	 */
	tuple = FUNC18(RELOID, FUNC9(relid));
	if (!FUNC7(tuple))
		FUNC19(ERROR, "cache lookup failed for relation %u", relid);
	if (((Form_pg_class) FUNC6(tuple))->relispartition)
	{
		parentOid = FUNC21(relid);
		FUNC8(parentOid, AccessExclusiveLock);

		/*
		 * If this is not the default partition, dropping it will change the
		 * default partition's partition constraint, so we must lock it.
		 */
		defaultPartOid = FUNC20(parentOid);
		if (FUNC10(defaultPartOid) && relid != defaultPartOid)
			FUNC8(defaultPartOid, AccessExclusiveLock);
	}

	FUNC14(tuple);

	/*
	 * Open and lock the relation.
	 */
	rel = FUNC23(relid, AccessExclusiveLock);

	/*
	 * There can no longer be anyone *else* touching the relation, but we
	 * might still have open queries or cursors, or pending trigger events, in
	 * our own session.
	 */
	FUNC3(rel, "DROP TABLE");

	/*
	 * This effectively deletes all rows in the table, and may be done in a
	 * serializable transaction.  In that case we must record a rw-conflict in
	 * to this transaction from each transaction holding a predicate lock on
	 * the table.
	 */
	FUNC2(rel);

	/*
	 * Delete pg_foreign_table tuple first.
	 */
	if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
	{
		Relation	rel;
		HeapTuple	tuple;

		rel = FUNC26(ForeignTableRelationId, RowExclusiveLock);

		tuple = FUNC18(FOREIGNTABLEREL, FUNC9(relid));
		if (!FUNC7(tuple))
			FUNC19(ERROR, "cache lookup failed for foreign table %u", relid);

		FUNC1(rel, &tuple->t_self);

		FUNC14(tuple);
		FUNC25(rel, RowExclusiveLock);
	}

	/*
	 * If a partitioned table, delete the pg_partitioned_table tuple.
	 */
	if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		FUNC15(relid);

	/*
	 * If the relation being dropped is the default partition itself,
	 * invalidate its entry in pg_partitioned_table.
	 */
	if (relid == defaultPartOid)
		FUNC27(parentOid, InvalidOid);

	/*
	 * Schedule unlinking of the relation's physical files at commit.
	 */
	if (rel->rd_rel->relkind != RELKIND_VIEW &&
		rel->rd_rel->relkind != RELKIND_COMPOSITE_TYPE &&
		rel->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
		rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
	{
		FUNC11(rel);
	}

	/*
	 * Close relcache entry, but *keep* AccessExclusiveLock on the relation
	 * until transaction commit.  This ensures no one else will try to do
	 * something with the doomed relation.
	 */
	FUNC22(rel, NoLock);

	/*
	 * Remove any associated relation synchronization states.
	 */
	FUNC17(InvalidOid, relid);

	/*
	 * Forget any ON COMMIT action for the rel
	 */
	FUNC24(relid);

	/*
	 * Flush the relation from the relcache.  We want to do this before
	 * starting to remove catalog entries, just to be certain that no relcache
	 * entry rebuild will happen partway through.  (That should not really
	 * matter, since we don't do CommandCounterIncrement here, but let's be
	 * safe.)
	 */
	FUNC12(relid);

	/*
	 * remove inheritance information
	 */
	FUNC13(relid);

	/*
	 * delete statistics
	 */
	FUNC16(relid, 0);

	/*
	 * delete attribute tuples
	 */
	FUNC4(relid);

	/*
	 * delete relation tuple
	 */
	FUNC5(relid);

	if (FUNC10(parentOid))
	{
		/*
		 * If this is not the default partition, the partition constraint of
		 * the default partition has changed to include the portion of the key
		 * space previously covered by the dropped partition.
		 */
		if (FUNC10(defaultPartOid) && relid != defaultPartOid)
			FUNC0(defaultPartOid);

		/*
		 * Invalidate the parent's relcache so that the partition is no longer
		 * included in its partition descriptor.
		 */
		FUNC0(parentOid);
		/* keep the lock */
	}
}