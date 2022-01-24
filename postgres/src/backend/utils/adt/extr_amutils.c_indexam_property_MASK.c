#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ relkind; scalar_t__ relam; int relnatts; } ;
struct TYPE_6__ {scalar_t__ indexrelid; int indnatts; int indnkeyatts; } ;
struct TYPE_5__ {int amcaninclude; int amcanorder; int amsearcharray; int amsearchnulls; int amclusterable; int amcanbackward; int amcanunique; int amcanmulticol; int /*<<< orphan*/  amgettuple; int /*<<< orphan*/  amgetbitmap; int /*<<< orphan*/  amcanreturn; int /*<<< orphan*/  amcanorderbyop; scalar_t__ (* amproperty ) (scalar_t__,int,int,char const*,int*,int*) ;} ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ IndexAmRoutine ;
typedef  int IndexAMProperty ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_2__* Form_pg_index ;
typedef  TYPE_3__* Form_pg_class ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  AMPROP_ASC 145 
#define  AMPROP_BACKWARD_SCAN 144 
#define  AMPROP_BITMAP_SCAN 143 
#define  AMPROP_CAN_EXCLUDE 142 
#define  AMPROP_CAN_INCLUDE 141 
#define  AMPROP_CAN_MULTI_COL 140 
#define  AMPROP_CAN_ORDER 139 
#define  AMPROP_CAN_UNIQUE 138 
#define  AMPROP_CLUSTERABLE 137 
#define  AMPROP_DESC 136 
#define  AMPROP_DISTANCE_ORDERABLE 135 
#define  AMPROP_INDEX_SCAN 134 
#define  AMPROP_NULLS_FIRST 133 
#define  AMPROP_NULLS_LAST 132 
#define  AMPROP_ORDERABLE 131 
#define  AMPROP_RETURNABLE 130 
#define  AMPROP_SEARCH_ARRAY 129 
#define  AMPROP_SEARCH_NULLS 128 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  INDOPTION_DESC ; 
 int /*<<< orphan*/  INDOPTION_NULLS_FIRST ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (scalar_t__,int,int,char const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static Datum
FUNC16(FunctionCallInfo fcinfo,
				 const char *propname,
				 Oid amoid, Oid index_oid, int attno)
{
	bool		res = false;
	bool		isnull = false;
	int			natts = 0;
	IndexAMProperty prop;
	IndexAmRoutine *routine;

	/* Try to convert property name to enum (no error if not known) */
	prop = FUNC13(propname);

	/* If we have an index OID, look up the AM, and get # of columns too */
	if (FUNC5(index_oid))
	{
		HeapTuple	tuple;
		Form_pg_class rd_rel;

		FUNC0(!FUNC5(amoid));
		tuple = FUNC9(RELOID, FUNC4(index_oid));
		if (!FUNC3(tuple))
			FUNC7();
		rd_rel = (Form_pg_class) FUNC1(tuple);
		if (rd_rel->relkind != RELKIND_INDEX &&
			rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
		{
			FUNC8(tuple);
			FUNC7();
		}
		amoid = rd_rel->relam;
		natts = rd_rel->relnatts;
		FUNC8(tuple);
	}

	/*
	 * At this point, either index_oid == InvalidOid or it's a valid index
	 * OID. Also, after this test and the one below, either attno == 0 for
	 * index-wide or AM-wide tests, or it's a valid column number in a valid
	 * index.
	 */
	if (attno < 0 || attno > natts)
		FUNC7();

	/*
	 * Get AM information.  If we don't have a valid AM OID, return NULL.
	 */
	routine = FUNC2(amoid, true);
	if (routine == NULL)
		FUNC7();

	/*
	 * If there's an AM property routine, give it a chance to override the
	 * generic logic.  Proceed if it returns false.
	 */
	if (routine->amproperty &&
		routine->amproperty(index_oid, attno, prop, propname,
							&res, &isnull))
	{
		if (isnull)
			FUNC7();
		FUNC6(res);
	}

	if (attno > 0)
	{
		HeapTuple	tuple;
		Form_pg_index rd_index;
		bool		iskey = true;

		/*
		 * Handle column-level properties. Many of these need the pg_index row
		 * (which we also need to use to check for nonkey atts) so we fetch
		 * that first.
		 */
		tuple = FUNC9(INDEXRELID, FUNC4(index_oid));
		if (!FUNC3(tuple))
			FUNC7();
		rd_index = (Form_pg_index) FUNC1(tuple);

		FUNC0(index_oid == rd_index->indexrelid);
		FUNC0(attno > 0 && attno <= rd_index->indnatts);

		isnull = true;

		/*
		 * If amcaninclude, we might be looking at an attno for a nonkey
		 * column, for which we (generically) assume that most properties are
		 * null.
		 */
		if (routine->amcaninclude
			&& attno > rd_index->indnkeyatts)
			iskey = false;

		switch (prop)
		{
			case AMPROP_ASC:
				if (iskey &&
					FUNC15(tuple, attno, routine->amcanorder,
								   INDOPTION_DESC, 0, &res))
					isnull = false;
				break;

			case AMPROP_DESC:
				if (iskey &&
					FUNC15(tuple, attno, routine->amcanorder,
								   INDOPTION_DESC, INDOPTION_DESC, &res))
					isnull = false;
				break;

			case AMPROP_NULLS_FIRST:
				if (iskey &&
					FUNC15(tuple, attno, routine->amcanorder,
								   INDOPTION_NULLS_FIRST, INDOPTION_NULLS_FIRST, &res))
					isnull = false;
				break;

			case AMPROP_NULLS_LAST:
				if (iskey &&
					FUNC15(tuple, attno, routine->amcanorder,
								   INDOPTION_NULLS_FIRST, 0, &res))
					isnull = false;
				break;

			case AMPROP_ORDERABLE:

				/*
				 * generic assumption is that nonkey columns are not orderable
				 */
				res = iskey ? routine->amcanorder : false;
				isnull = false;
				break;

			case AMPROP_DISTANCE_ORDERABLE:

				/*
				 * The conditions for whether a column is distance-orderable
				 * are really up to the AM (at time of writing, only GiST
				 * supports it at all). The planner has its own idea based on
				 * whether it finds an operator with amoppurpose 'o', but
				 * getting there from just the index column type seems like a
				 * lot of work. So instead we expect the AM to handle this in
				 * its amproperty routine. The generic result is to return
				 * false if the AM says it never supports this, or if this is
				 * a nonkey column, and null otherwise (meaning we don't
				 * know).
				 */
				if (!iskey || !routine->amcanorderbyop)
				{
					res = false;
					isnull = false;
				}
				break;

			case AMPROP_RETURNABLE:

				/* note that we ignore iskey for this property */

				isnull = false;
				res = false;

				if (routine->amcanreturn)
				{
					/*
					 * If possible, the AM should handle this test in its
					 * amproperty function without opening the rel. But this
					 * is the generic fallback if it does not.
					 */
					Relation	indexrel = FUNC12(index_oid, AccessShareLock);

					res = FUNC10(indexrel, attno);
					FUNC11(indexrel, AccessShareLock);
				}
				break;

			case AMPROP_SEARCH_ARRAY:
				if (iskey)
				{
					res = routine->amsearcharray;
					isnull = false;
				}
				break;

			case AMPROP_SEARCH_NULLS:
				if (iskey)
				{
					res = routine->amsearchnulls;
					isnull = false;
				}
				break;

			default:
				break;
		}

		FUNC8(tuple);

		if (!isnull)
			FUNC6(res);
		FUNC7();
	}

	if (FUNC5(index_oid))
	{
		/*
		 * Handle index-level properties.  Currently, these only depend on the
		 * AM, but that might not be true forever, so we make users name an
		 * index not just an AM.
		 */
		switch (prop)
		{
			case AMPROP_CLUSTERABLE:
				FUNC6(routine->amclusterable);

			case AMPROP_INDEX_SCAN:
				FUNC6(routine->amgettuple ? true : false);

			case AMPROP_BITMAP_SCAN:
				FUNC6(routine->amgetbitmap ? true : false);

			case AMPROP_BACKWARD_SCAN:
				FUNC6(routine->amcanbackward);

			default:
				FUNC7();
		}
	}

	/*
	 * Handle AM-level properties (those that control what you can say in
	 * CREATE INDEX).
	 */
	switch (prop)
	{
		case AMPROP_CAN_ORDER:
			FUNC6(routine->amcanorder);

		case AMPROP_CAN_UNIQUE:
			FUNC6(routine->amcanunique);

		case AMPROP_CAN_MULTI_COL:
			FUNC6(routine->amcanmulticol);

		case AMPROP_CAN_EXCLUDE:
			FUNC6(routine->amgettuple ? true : false);

		case AMPROP_CAN_INCLUDE:
			FUNC6(routine->amcaninclude);

		default:
			FUNC7();
	}
}