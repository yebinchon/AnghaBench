#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  indisclustered; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; scalar_t__ relisshared; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int CLUOPT_RECHECK ; 
 int CLUOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_COMMAND ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_COMMAND_CLUSTER ; 
 int /*<<< orphan*/  PROGRESS_CLUSTER_COMMAND_VACUUM_FULL ; 
 int /*<<< orphan*/  PROGRESS_COMMAND_CLUSTER ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ RELKIND_MATVIEW ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC24(Oid tableOid, Oid indexOid, int options)
{
	Relation	OldHeap;
	bool		verbose = ((options & CLUOPT_VERBOSE) != 0);
	bool		recheck = ((options & CLUOPT_RECHECK) != 0);

	/* Check for user-requested abort. */
	FUNC0();

	FUNC19(PROGRESS_COMMAND_CLUSTER, tableOid);
	if (FUNC6(indexOid))
		FUNC20(PROGRESS_CLUSTER_COMMAND,
									 PROGRESS_CLUSTER_COMMAND_CLUSTER);
	else
		FUNC20(PROGRESS_CLUSTER_COMMAND,
									 PROGRESS_CLUSTER_COMMAND_VACUUM_FULL);

	/*
	 * We grab exclusive access to the target rel and index for the duration
	 * of the transaction.  (This is redundant for the single-transaction
	 * case, since cluster() already did it.)  The index lock is taken inside
	 * check_index_is_clusterable.
	 */
	OldHeap = FUNC23(tableOid, AccessExclusiveLock);

	/* If the table has gone away, we can skip processing it */
	if (!OldHeap)
	{
		FUNC18();
		return;
	}

	/*
	 * Since we may open a new transaction for each relation, we have to check
	 * that the relation still is what we think it is.
	 *
	 * If this is a single-transaction CLUSTER, we can skip these tests. We
	 * *must* skip the one on indisclustered since it would reject an attempt
	 * to cluster a not-previously-clustered index.
	 */
	if (recheck)
	{
		HeapTuple	tuple;
		Form_pg_index indexForm;

		/* Check that the user still owns the relation */
		if (!FUNC17(tableOid, FUNC3()))
		{
			FUNC22(OldHeap, AccessExclusiveLock);
			FUNC18();
			return;
		}

		/*
		 * Silently skip a temp table for a remote session.  Only doing this
		 * check in the "recheck" case is appropriate (which currently means
		 * somebody is executing a database-wide CLUSTER), because there is
		 * another check in cluster() which will stop any attempt to cluster
		 * remote temp tables by name.  There is another check in cluster_rel
		 * which is redundant, but we leave it for extra safety.
		 */
		if (FUNC7(OldHeap))
		{
			FUNC22(OldHeap, AccessExclusiveLock);
			FUNC18();
			return;
		}

		if (FUNC6(indexOid))
		{
			/*
			 * Check that the index still exists
			 */
			if (!FUNC11(RELOID, FUNC5(indexOid)))
			{
				FUNC22(OldHeap, AccessExclusiveLock);
				FUNC18();
				return;
			}

			/*
			 * Check that the index is still the one with indisclustered set.
			 */
			tuple = FUNC10(INDEXRELID, FUNC5(indexOid));
			if (!FUNC4(tuple))	/* probably can't happen */
			{
				FUNC22(OldHeap, AccessExclusiveLock);
				FUNC18();
				return;
			}
			indexForm = (Form_pg_index) FUNC2(tuple);
			if (!indexForm->indisclustered)
			{
				FUNC9(tuple);
				FUNC22(OldHeap, AccessExclusiveLock);
				FUNC18();
				return;
			}
			FUNC9(tuple);
		}
	}

	/*
	 * We allow VACUUM FULL, but not CLUSTER, on shared catalogs.  CLUSTER
	 * would work in most respects, but the index would only get marked as
	 * indisclustered in the current database, leading to unexpected behavior
	 * if CLUSTER were later invoked in another database.
	 */
	if (FUNC6(indexOid) && OldHeap->rd_rel->relisshared)
		FUNC14(ERROR,
				(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC16("cannot cluster a shared catalog")));

	/*
	 * Don't process temp tables of other backends ... their local buffer
	 * manager is not going to cope.
	 */
	if (FUNC7(OldHeap))
	{
		if (FUNC6(indexOid))
			FUNC14(ERROR,
					(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC16("cannot cluster temporary tables of other sessions")));
		else
			FUNC14(ERROR,
					(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC16("cannot vacuum temporary tables of other sessions")));
	}

	/*
	 * Also check for active uses of the relation in the current transaction,
	 * including open scans and pending AFTER trigger events.
	 */
	FUNC1(OldHeap, FUNC6(indexOid) ? "CLUSTER" : "VACUUM");

	/* Check heap and index are valid to cluster on */
	if (FUNC6(indexOid))
		FUNC13(OldHeap, indexOid, recheck, AccessExclusiveLock);

	/*
	 * Quietly ignore the request if this is a materialized view which has not
	 * been populated from its query. No harm is done because there is no data
	 * to deal with, and we don't want to throw an error if this is part of a
	 * multi-relation request -- for example, CLUSTER was run on the entire
	 * database.
	 */
	if (OldHeap->rd_rel->relkind == RELKIND_MATVIEW &&
		!FUNC8(OldHeap))
	{
		FUNC22(OldHeap, AccessExclusiveLock);
		FUNC18();
		return;
	}

	/*
	 * All predicate locks on the tuples or pages are about to be made
	 * invalid, because we move tuples around.  Promote them to relation
	 * locks.  Predicate locks on indexes will be promoted when they are
	 * reindexed.
	 */
	FUNC12(OldHeap);

	/* rebuild_relation does all the dirty work */
	FUNC21(OldHeap, indexOid, verbose);

	/* NB: rebuild_relation does table_close() on OldHeap */

	FUNC18();
}