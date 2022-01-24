#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MCVList ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_statistic_ext_data_stxdmcv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATEXTDATASTXOID ; 
 int /*<<< orphan*/  STATS_EXT_DEPENDENCIES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

MCVList *
FUNC8(Oid mvoid)
{
	MCVList    *result;
	bool		isnull;
	Datum		mcvlist;
	HeapTuple	htup = FUNC4(STATEXTDATASTXOID, FUNC2(mvoid));

	if (!FUNC1(htup))
		FUNC6(ERROR, "cache lookup failed for statistics object %u", mvoid);

	mcvlist = FUNC5(STATEXTDATASTXOID, htup,
							  Anum_pg_statistic_ext_data_stxdmcv, &isnull);

	if (isnull)
		FUNC6(ERROR,
			 "requested statistic kind \"%c\" is not yet built for statistics object %u",
			 STATS_EXT_DEPENDENCIES, mvoid);

	result = FUNC7(FUNC0(mcvlist));

	FUNC3(htup);

	return result;
}