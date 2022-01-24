#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  scalar_t__ float4 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_9__ {scalar_t__ relpages; scalar_t__ reltuples; scalar_t__ relallvisible; int relhasindex; int relhasrules; int relhastriggers; int /*<<< orphan*/  relminmxid; int /*<<< orphan*/  relfrozenxid; } ;
struct TYPE_8__ {int /*<<< orphan*/ * trigdesc; int /*<<< orphan*/ * rd_rules; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(Relation relation,
					BlockNumber num_pages, double num_tuples,
					BlockNumber num_all_visible_pages,
					bool hasindex, TransactionId frozenxid,
					MultiXactId minmulti,
					bool in_outer_xact)
{
	Oid			relid = FUNC7(relation);
	Relation	rd;
	HeapTuple	ctup;
	Form_pg_class pgcform;
	bool		dirty;

	rd = FUNC14(RelationRelationId, RowExclusiveLock);

	/* Fetch a copy of the tuple to scribble on */
	ctup = FUNC8(RELOID, FUNC4(relid));
	if (!FUNC1(ctup))
		FUNC11(ERROR, "pg_class entry for relid %u vanished during vacuuming",
			 relid);
	pgcform = (Form_pg_class) FUNC0(ctup);

	/* Apply statistical updates, if any, to copied tuple */

	dirty = false;
	if (pgcform->relpages != (int32) num_pages)
	{
		pgcform->relpages = (int32) num_pages;
		dirty = true;
	}
	if (pgcform->reltuples != (float4) num_tuples)
	{
		pgcform->reltuples = (float4) num_tuples;
		dirty = true;
	}
	if (pgcform->relallvisible != (int32) num_all_visible_pages)
	{
		pgcform->relallvisible = (int32) num_all_visible_pages;
		dirty = true;
	}

	/* Apply DDL updates, but not inside an outer transaction (see above) */

	if (!in_outer_xact)
	{
		/*
		 * If we didn't find any indexes, reset relhasindex.
		 */
		if (pgcform->relhasindex && !hasindex)
		{
			pgcform->relhasindex = false;
			dirty = true;
		}

		/* We also clear relhasrules and relhastriggers if needed */
		if (pgcform->relhasrules && relation->rd_rules == NULL)
		{
			pgcform->relhasrules = false;
			dirty = true;
		}
		if (pgcform->relhastriggers && relation->trigdesc == NULL)
		{
			pgcform->relhastriggers = false;
			dirty = true;
		}
	}

	/*
	 * Update relfrozenxid, unless caller passed InvalidTransactionId
	 * indicating it has no new data.
	 *
	 * Ordinarily, we don't let relfrozenxid go backwards: if things are
	 * working correctly, the only way the new frozenxid could be older would
	 * be if a previous VACUUM was done with a tighter freeze_min_age, in
	 * which case we don't want to forget the work it already did.  However,
	 * if the stored relfrozenxid is "in the future", then it must be corrupt
	 * and it seems best to overwrite it with the cutoff we used this time.
	 * This should match vac_update_datfrozenxid() concerning what we consider
	 * to be "in the future".
	 */
	if (FUNC9(frozenxid) &&
		pgcform->relfrozenxid != frozenxid &&
		(FUNC10(pgcform->relfrozenxid, frozenxid) ||
		 FUNC10(FUNC5(),
							   pgcform->relfrozenxid)))
	{
		pgcform->relfrozenxid = frozenxid;
		dirty = true;
	}

	/* Similarly for relminmxid */
	if (FUNC2(minmulti) &&
		pgcform->relminmxid != minmulti &&
		(FUNC3(pgcform->relminmxid, minmulti) ||
		 FUNC3(FUNC6(), pgcform->relminmxid)))
	{
		pgcform->relminmxid = minmulti;
		dirty = true;
	}

	/* If anything changed, write out the tuple. */
	if (dirty)
		FUNC12(rd, ctup);

	FUNC13(rd, RowExclusiveLock);
}