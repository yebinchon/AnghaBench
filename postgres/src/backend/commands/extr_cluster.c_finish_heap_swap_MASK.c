#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mapped_tables ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_20__ {int /*<<< orphan*/  relminmxid; int /*<<< orphan*/  relfrozenxid; } ;
struct TYPE_19__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_18__ {scalar_t__ objectSubId; scalar_t__ objectId; scalar_t__ classId; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ reltoastrelid; } ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ ObjectAddress ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  PERFORM_DELETION_INTERNAL ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_PHASE ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_PHASE_FINAL_CLEANUP ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_PHASE_REBUILD_INDEX ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_PHASE_SWAP_REL_FILES ; 
 int REINDEX_REL_CHECK_CONSTRAINTS ; 
 int REINDEX_REL_FORCE_INDEXES_PERMANENT ; 
 int REINDEX_REL_FORCE_INDEXES_UNLOGGED ; 
 int REINDEX_REL_SUPPRESS_INDEX_USE ; 
 int /*<<< orphan*/  RELOID ; 
 char RELPERSISTENCE_PERMANENT ; 
 char RELPERSISTENCE_UNLOGGED ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC21(Oid OIDOldHeap, Oid OIDNewHeap,
				 bool is_system_catalog,
				 bool swap_toast_by_content,
				 bool check_constraints,
				 bool is_internal,
				 TransactionId frozenXid,
				 MultiXactId cutoffMulti,
				 char newrelpersistence)
{
	ObjectAddress object;
	Oid			mapped_tables[4];
	int			reindex_flags;
	int			i;

	/* Report that we are now swapping relation files */
	FUNC13(PROGRESS_CLUSTER_PHASE,
								 PROGRESS_CLUSTER_PHASE_SWAP_REL_FILES);

	/* Zero out possible results from swapped_relation_files */
	FUNC11(mapped_tables, 0, sizeof(mapped_tables));

	/*
	 * Swap the contents of the heap relations (including any toast tables).
	 * Also set old heap's relfrozenxid to frozenXid.
	 */
	FUNC17(OIDOldHeap, OIDNewHeap,
						(OIDOldHeap == RelationRelationId),
						swap_toast_by_content, is_internal,
						frozenXid, cutoffMulti, mapped_tables);

	/*
	 * If it's a system catalog, queue a sinval message to flush all catcaches
	 * on the catalog when we reach CommandCounterIncrement.
	 */
	if (is_system_catalog)
		FUNC0(OIDOldHeap);

	/*
	 * Rebuild each index on the relation (but not the toast table, which is
	 * all-new at this point).  It is important to do this before the DROP
	 * step because if we are processing a system catalog that will be used
	 * during DROP, we want to have its indexes available.  There is no
	 * advantage to the other order anyway because this is all transactional,
	 * so no chance to reclaim disk space before commit.  We do not need a
	 * final CommandCounterIncrement() because reindex_relation does it.
	 *
	 * Note: because index_build is called via reindex_relation, it will never
	 * set indcheckxmin true for the indexes.  This is OK even though in some
	 * sense we are building new indexes rather than rebuilding existing ones,
	 * because the new heap won't contain any HOT chains at all, let alone
	 * broken ones, so it can't be necessary to set indcheckxmin.
	 */
	reindex_flags = REINDEX_REL_SUPPRESS_INDEX_USE;
	if (check_constraints)
		reindex_flags |= REINDEX_REL_CHECK_CONSTRAINTS;

	/*
	 * Ensure that the indexes have the same persistence as the parent
	 * relation.
	 */
	if (newrelpersistence == RELPERSISTENCE_UNLOGGED)
		reindex_flags |= REINDEX_REL_FORCE_INDEXES_UNLOGGED;
	else if (newrelpersistence == RELPERSISTENCE_PERMANENT)
		reindex_flags |= REINDEX_REL_FORCE_INDEXES_PERMANENT;

	/* Report that we are now reindexing relations */
	FUNC13(PROGRESS_CLUSTER_PHASE,
								 PROGRESS_CLUSTER_PHASE_REBUILD_INDEX);

	FUNC14(OIDOldHeap, reindex_flags, 0);

	/* Report that we are now doing clean up */
	FUNC13(PROGRESS_CLUSTER_PHASE,
								 PROGRESS_CLUSTER_PHASE_FINAL_CLEANUP);

	/*
	 * If the relation being rebuild is pg_class, swap_relation_files()
	 * couldn't update pg_class's own pg_class entry (check comments in
	 * swap_relation_files()), thus relfrozenxid was not updated. That's
	 * annoying because a potential reason for doing a VACUUM FULL is a
	 * imminent or actual anti-wraparound shutdown.  So, now that we can
	 * access the new relation using its indices, update relfrozenxid.
	 * pg_class doesn't have a toast relation, so we don't need to update the
	 * corresponding toast relation. Not that there's little point moving all
	 * relfrozenxid updates here since swap_relation_files() needs to write to
	 * pg_class for non-mapped relations anyway.
	 */
	if (OIDOldHeap == RelationRelationId)
	{
		Relation	relRelation;
		HeapTuple	reltup;
		Form_pg_class relform;

		relRelation = FUNC19(RelationRelationId, RowExclusiveLock);

		reltup = FUNC9(RELOID, FUNC4(OIDOldHeap));
		if (!FUNC3(reltup))
			FUNC10(ERROR, "cache lookup failed for relation %u", OIDOldHeap);
		relform = (Form_pg_class) FUNC2(reltup);

		relform->relfrozenxid = frozenXid;
		relform->relminmxid = cutoffMulti;

		FUNC1(relRelation, &reltup->t_self, reltup);

		FUNC18(relRelation, RowExclusiveLock);
	}

	/* Destroy new heap with old filenode */
	object.classId = RelationRelationId;
	object.objectId = OIDNewHeap;
	object.objectSubId = 0;

	/*
	 * The new relation is local to our transaction and we know nothing
	 * depends on it, so DROP_RESTRICT should be OK.
	 */
	FUNC12(&object, DROP_RESTRICT, PERFORM_DELETION_INTERNAL);

	/* performDeletion does CommandCounterIncrement at end */

	/*
	 * Now we must remove any relation mapping entries that we set up for the
	 * transient table, as well as its toast table and toast index if any. If
	 * we fail to do this before commit, the relmapper will complain about new
	 * permanent map entries being added post-bootstrap.
	 */
	for (i = 0; FUNC5(mapped_tables[i]); i++)
		FUNC7(mapped_tables[i]);

	/*
	 * At this point, everything is kosher except that, if we did toast swap
	 * by links, the toast table's name corresponds to the transient table.
	 * The name is irrelevant to the backend because it's referenced by OID,
	 * but users looking at the catalogs could be confused.  Rename it to
	 * prevent this problem.
	 *
	 * Note no lock required on the relation, because we already hold an
	 * exclusive lock on it.
	 */
	if (!swap_toast_by_content)
	{
		Relation	newrel;

		newrel = FUNC19(OIDOldHeap, NoLock);
		if (FUNC5(newrel->rd_rel->reltoastrelid))
		{
			Oid			toastidx;
			char		NewToastName[NAMEDATALEN];

			/* Get the associated valid index to be renamed */
			toastidx = FUNC20(newrel->rd_rel->reltoastrelid,
											 AccessShareLock);

			/* rename the toast table ... */
			FUNC16(NewToastName, NAMEDATALEN, "pg_toast_%u",
					 OIDOldHeap);
			FUNC8(newrel->rd_rel->reltoastrelid,
								   NewToastName, true, false);

			/* ... and its valid index too. */
			FUNC16(NewToastName, NAMEDATALEN, "pg_toast_%u_index",
					 OIDOldHeap);

			FUNC8(toastidx,
								   NewToastName, true, true);
		}
		FUNC15(newrel, NoLock);
	}

	/* if it's not a catalog table, clear any missing attribute settings */
	if (!is_system_catalog)
	{
		Relation	newrel;

		newrel = FUNC19(OIDOldHeap, NoLock);
		FUNC6(newrel);
		FUNC15(newrel, NoLock);
	}
}