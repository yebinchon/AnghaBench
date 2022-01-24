#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int havedead; scalar_t__ indtuples; int /*<<< orphan*/ * btleader; int /*<<< orphan*/ * spool2; int /*<<< orphan*/ * spool; int /*<<< orphan*/  heap; int /*<<< orphan*/  isunique; } ;
struct TYPE_9__ {double heap_tuples; scalar_t__ index_tuples; } ;
struct TYPE_8__ {int /*<<< orphan*/  ii_Unique; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ IndexInfo ;
typedef  TYPE_2__ IndexBuildResult ;
typedef  TYPE_3__ BTBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 double FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ log_btree_build_stats ; 
 scalar_t__ FUNC9 (int) ; 

IndexBuildResult *
FUNC10(Relation heap, Relation index, IndexInfo *indexInfo)
{
	IndexBuildResult *result;
	BTBuildState buildstate;
	double		reltuples;

#ifdef BTREE_BUILD_STATS
	if (log_btree_build_stats)
		ResetUsage();
#endif							/* BTREE_BUILD_STATS */

	buildstate.isunique = indexInfo->ii_Unique;
	buildstate.havedead = false;
	buildstate.heap = heap;
	buildstate.spool = NULL;
	buildstate.spool2 = NULL;
	buildstate.indtuples = 0;
	buildstate.btleader = NULL;

	/*
	 * We expect to be called exactly once for any index relation. If that's
	 * not the case, big trouble's what we have.
	 */
	if (FUNC0(index) != 0)
		FUNC8(ERROR, "index \"%s\" already contains data",
			 FUNC1(index));

	reltuples = FUNC7(heap, index, &buildstate, indexInfo);

	/*
	 * Finish the build by (1) completing the sort of the spool file, (2)
	 * inserting the sorted tuples into btree pages and (3) building the upper
	 * levels.  Finally, it may also be necessary to end use of parallelism.
	 */
	FUNC5(buildstate.spool, buildstate.spool2);
	FUNC6(buildstate.spool);
	if (buildstate.spool2)
		FUNC6(buildstate.spool2);
	if (buildstate.btleader)
		FUNC4(buildstate.btleader);

	result = (IndexBuildResult *) FUNC9(sizeof(IndexBuildResult));

	result->heap_tuples = reltuples;
	result->index_tuples = buildstate.indtuples;

#ifdef BTREE_BUILD_STATS
	if (log_btree_build_stats)
	{
		ShowUsage("BTREE BUILD STATS");
		ResetUsage();
	}
#endif							/* BTREE_BUILD_STATS */

	return result;
}