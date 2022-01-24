#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tupDesc; int /*<<< orphan*/  attrcollid; int /*<<< orphan*/  attrtypid; } ;
typedef  TYPE_1__ VacAttrStats ;
struct TYPE_6__ {scalar_t__ lt_opr; } ;
typedef  TYPE_2__ TypeCacheEntry ;
typedef  size_t SortItem ;
typedef  size_t* MultiSortSupport ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  size_t AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  TYPECACHE_LT_OPR ; 
 size_t* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 size_t* FUNC2 (int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,size_t*,size_t*,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,size_t*,size_t*,size_t*) ; 
 size_t* FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (size_t*) ; 

__attribute__((used)) static double
FUNC11(int numrows, HeapTuple *rows, int k, AttrNumber *dependency,
				  VacAttrStats **stats, Bitmapset *attrs)
{
	int			i,
				nitems;
	MultiSortSupport mss;
	SortItem   *items;
	AttrNumber *attnums;
	AttrNumber *attnums_dep;
	int			numattrs;

	/* counters valid within a group */
	int			group_size = 0;
	int			n_violations = 0;

	/* total number of rows supporting (consistent with) the dependency */
	int			n_supporting_rows = 0;

	/* Make sure we have at least two input attributes. */
	FUNC0(k >= 2);

	/* sort info for all attributes columns */
	mss = FUNC8(k);

	/*
	 * Transform the attrs from bitmap to an array to make accessing the i-th
	 * member easier, and then construct a filtered version with only attnums
	 * referenced by the dependency we validate.
	 */
	attnums = FUNC1(attrs, &numattrs);

	attnums_dep = (AttrNumber *) FUNC9(k * sizeof(AttrNumber));
	for (i = 0; i < k; i++)
		attnums_dep[i] = attnums[dependency[i]];

	/*
	 * Verify the dependency (a,b,...)->z, using a rather simple algorithm:
	 *
	 * (a) sort the data lexicographically
	 *
	 * (b) split the data into groups by first (k-1) columns
	 *
	 * (c) for each group count different values in the last column
	 *
	 * We use the column data types' default sort operators and collations;
	 * perhaps at some point it'd be worth using column-specific collations?
	 */

	/* prepare the sort function for the dimensions */
	for (i = 0; i < k; i++)
	{
		VacAttrStats *colstat = stats[dependency[i]];
		TypeCacheEntry *type;

		type = FUNC4(colstat->attrtypid, TYPECACHE_LT_OPR);
		if (type->lt_opr == InvalidOid) /* shouldn't happen */
			FUNC3(ERROR, "cache lookup failed for ordering operator for type %u",
				 colstat->attrtypid);

		/* prepare the sort function for this dimension */
		FUNC5(mss, i, type->lt_opr, colstat->attrcollid);
	}

	/*
	 * build an array of SortItem(s) sorted using the multi-sort support
	 *
	 * XXX This relies on all stats entries pointing to the same tuple
	 * descriptor.  For now that assumption holds, but it might change in the
	 * future for example if we support statistics on multiple tables.
	 */
	items = FUNC2(numrows, &nitems, rows, stats[0]->tupDesc,
							   mss, k, attnums_dep);

	/*
	 * Walk through the sorted array, split it into rows according to the
	 * first (k-1) columns. If there's a single value in the last column, we
	 * count the group as 'supporting' the functional dependency. Otherwise we
	 * count it as contradicting.
	 */

	/* start with the first row forming a group */
	group_size = 1;

	/* loop 1 beyond the end of the array so that we count the final group */
	for (i = 1; i <= nitems; i++)
	{
		/*
		 * Check if the group ended, which may be either because we processed
		 * all the items (i==nitems), or because the i-th item is not equal to
		 * the preceding one.
		 */
		if (i == nitems ||
			FUNC7(0, k - 2, &items[i - 1], &items[i], mss) != 0)
		{
			/*
			 * If no violations were found in the group then track the rows of
			 * the group as supporting the functional dependency.
			 */
			if (n_violations == 0)
				n_supporting_rows += group_size;

			/* Reset counters for the new group */
			n_violations = 0;
			group_size = 1;
			continue;
		}
		/* first columns match, but the last one does not (so contradicting) */
		else if (FUNC6(k - 1, &items[i - 1], &items[i], mss) != 0)
			n_violations++;

		group_size++;
	}

	if (items)
		FUNC10(items);

	FUNC10(mss);
	FUNC10(attnums);
	FUNC10(attnums_dep);

	/* Compute the 'degree of validity' as (supporting/total). */
	return (n_supporting_rows * 1.0 / numrows);
}