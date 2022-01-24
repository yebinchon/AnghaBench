#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ relkind; scalar_t__ relisshared; } ;
struct TYPE_24__ {int /*<<< orphan*/  indislive; int /*<<< orphan*/  indisready; int /*<<< orphan*/  indcheckxmin; int /*<<< orphan*/  indisvalid; int /*<<< orphan*/  indisclustered; int /*<<< orphan*/  indimmediate; int /*<<< orphan*/  indisexclusion; int /*<<< orphan*/  indisprimary; int /*<<< orphan*/  indisunique; } ;
struct TYPE_23__ {int /*<<< orphan*/  t_data; } ;
struct TYPE_22__ {int rd_isvalid; TYPE_2__* rd_indextuple; TYPE_1__* rd_index; int /*<<< orphan*/ * rd_options; TYPE_6__* rd_rel; int /*<<< orphan*/ * rd_amcache; } ;
struct TYPE_21__ {int /*<<< orphan*/  t_data; } ;
struct TYPE_20__ {int /*<<< orphan*/  indislive; int /*<<< orphan*/  indisready; int /*<<< orphan*/  indcheckxmin; int /*<<< orphan*/  indisvalid; int /*<<< orphan*/  indisclustered; int /*<<< orphan*/  indimmediate; int /*<<< orphan*/  indisexclusion; int /*<<< orphan*/  indisprimary; int /*<<< orphan*/  indisunique; } ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* Form_pg_index ;
typedef  scalar_t__ Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLASS_TUPLE_SIZE ; 
 scalar_t__ ClassOidIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_4__* FUNC12 (scalar_t__,int,int) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  criticalRelcachesBuilt ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(Relation relation)
{
	bool		indexOK;
	HeapTuple	pg_class_tuple;
	Form_pg_class relp;

	/* Should be called only for invalidated indexes */
	FUNC0((relation->rd_rel->relkind == RELKIND_INDEX ||
			relation->rd_rel->relkind == RELKIND_PARTITIONED_INDEX) &&
		   !relation->rd_isvalid);

	/* Ensure it's closed at smgr level */
	FUNC7(relation);

	/* Must free any AM cached data upon relcache flush */
	if (relation->rd_amcache)
		FUNC17(relation->rd_amcache);
	relation->rd_amcache = NULL;

	/*
	 * If it's a shared index, we might be called before backend startup has
	 * finished selecting a database, in which case we have no way to read
	 * pg_class yet.  However, a shared index can never have any significant
	 * schema updates, so it's okay to ignore the invalidation signal.  Just
	 * mark it valid and return without doing anything more.
	 */
	if (relation->rd_rel->relisshared && !criticalRelcachesBuilt)
	{
		relation->rd_isvalid = true;
		return;
	}

	/*
	 * Read the pg_class row
	 *
	 * Don't try to use an indexscan of pg_class_oid_index to reload the info
	 * for pg_class_oid_index ...
	 */
	indexOK = (FUNC8(relation) != ClassOidIndexId);
	pg_class_tuple = FUNC12(FUNC8(relation), indexOK, false);
	if (!FUNC4(pg_class_tuple))
		FUNC14(ERROR, "could not find pg_class tuple for index %u",
			 FUNC8(relation));
	relp = (Form_pg_class) FUNC1(pg_class_tuple);
	FUNC16(relation->rd_rel, relp, CLASS_TUPLE_SIZE);
	/* Reload reloptions in case they changed */
	if (relation->rd_options)
		FUNC17(relation->rd_options);
	FUNC10(relation, pg_class_tuple);
	/* done with pg_class tuple */
	FUNC15(pg_class_tuple);
	/* We must recalculate physical address in case it changed */
	FUNC9(relation);

	/*
	 * For a non-system index, there are fields of the pg_index row that are
	 * allowed to change, so re-read that row and update the relcache entry.
	 * Most of the info derived from pg_index (such as support function lookup
	 * info) cannot change, and indeed the whole point of this routine is to
	 * update the relcache entry without clobbering that data; so wholesale
	 * replacement is not appropriate.
	 */
	if (!FUNC5(relation))
	{
		HeapTuple	tuple;
		Form_pg_index index;

		tuple = FUNC13(INDEXRELID,
								FUNC6(FUNC8(relation)));
		if (!FUNC4(tuple))
			FUNC14(ERROR, "cache lookup failed for index %u",
				 FUNC8(relation));
		index = (Form_pg_index) FUNC1(tuple);

		/*
		 * Basically, let's just copy all the bool fields.  There are one or
		 * two of these that can't actually change in the current code, but
		 * it's not worth it to track exactly which ones they are.  None of
		 * the array fields are allowed to change, though.
		 */
		relation->rd_index->indisunique = index->indisunique;
		relation->rd_index->indisprimary = index->indisprimary;
		relation->rd_index->indisexclusion = index->indisexclusion;
		relation->rd_index->indimmediate = index->indimmediate;
		relation->rd_index->indisclustered = index->indisclustered;
		relation->rd_index->indisvalid = index->indisvalid;
		relation->rd_index->indcheckxmin = index->indcheckxmin;
		relation->rd_index->indisready = index->indisready;
		relation->rd_index->indislive = index->indislive;

		/* Copy xmin too, as that is needed to make sense of indcheckxmin */
		FUNC3(relation->rd_indextuple->t_data,
							   FUNC2(tuple->t_data));

		FUNC11(tuple);
	}

	/* Okay, now it's valid again */
	relation->rd_isvalid = true;
}