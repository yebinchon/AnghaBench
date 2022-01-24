#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  state; } ;
struct TYPE_16__ {TYPE_2__ ps; } ;
struct TYPE_15__ {scalar_t__ tupslot; int /*<<< orphan*/  reldesc; } ;
struct TYPE_14__ {int num_dispatch; int num_partitions; TYPE_3__** partitions; TYPE_5__** partition_dispatch_info; int /*<<< orphan*/ * subplan_resultrel_htab; } ;
struct TYPE_13__ {int /*<<< orphan*/  ri_RelationDesc; TYPE_1__* ri_FdwRoutine; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* EndForeignInsert ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  TYPE_4__ PartitionTupleRouting ;
typedef  TYPE_5__* PartitionDispatch ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_6__ ModifyTableState ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(ModifyTableState *mtstate,
						PartitionTupleRouting *proute)
{
	HTAB	   *htab = proute->subplan_resultrel_htab;
	int			i;

	/*
	 * Remember, proute->partition_dispatch_info[0] corresponds to the root
	 * partitioned table, which we must not try to close, because it is the
	 * main target table of the query that will be closed by callers such as
	 * ExecEndPlan() or DoCopy(). Also, tupslot is NULL for the root
	 * partitioned table.
	 */
	for (i = 1; i < proute->num_dispatch; i++)
	{
		PartitionDispatch pd = proute->partition_dispatch_info[i];

		FUNC5(pd->reldesc, NoLock);

		if (pd->tupslot)
			FUNC1(pd->tupslot);
	}

	for (i = 0; i < proute->num_partitions; i++)
	{
		ResultRelInfo *resultRelInfo = proute->partitions[i];

		/* Allow any FDWs to shut down */
		if (resultRelInfo->ri_FdwRoutine != NULL &&
			resultRelInfo->ri_FdwRoutine->EndForeignInsert != NULL)
			resultRelInfo->ri_FdwRoutine->EndForeignInsert(mtstate->ps.state,
														   resultRelInfo);

		/*
		 * Check if this result rel is one belonging to the node's subplans,
		 * if so, let ExecEndPlan() clean it up.
		 */
		if (htab)
		{
			Oid			partoid;
			bool		found;

			partoid = FUNC2(resultRelInfo->ri_RelationDesc);

			(void) FUNC3(htab, &partoid, HASH_FIND, &found);
			if (found)
				continue;
		}

		FUNC0(resultRelInfo);
		FUNC5(resultRelInfo->ri_RelationDesc, NoLock);
	}
}