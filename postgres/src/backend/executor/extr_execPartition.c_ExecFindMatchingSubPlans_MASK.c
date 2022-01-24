#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int num_partprunedata; int /*<<< orphan*/  prune_context; int /*<<< orphan*/  other_subplans; TYPE_4__** partprunedata; int /*<<< orphan*/  do_exec_prune; } ;
struct TYPE_12__ {TYPE_3__* partrelprunedata; } ;
struct TYPE_10__ {TYPE_1__* planstate; } ;
struct TYPE_11__ {TYPE_2__ exec_context; scalar_t__ exec_pruning_steps; } ;
struct TYPE_9__ {int /*<<< orphan*/  ps_ExprContext; } ;
typedef  TYPE_3__ PartitionedRelPruningData ;
typedef  TYPE_4__ PartitionPruningData ;
typedef  TYPE_5__ PartitionPruneState ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ **) ; 

Bitmapset *
FUNC7(PartitionPruneState *prunestate)
{
	Bitmapset  *result = NULL;
	MemoryContext oldcontext;
	int			i;

	/*
	 * If !do_exec_prune, we've got problems because
	 * ExecFindInitialMatchingSubPlans will not have bothered to update
	 * prunestate for whatever pruning it did.
	 */
	FUNC0(prunestate->do_exec_prune);

	/*
	 * Switch to a temp context to avoid leaking memory in the executor's
	 * query-lifespan memory context.
	 */
	oldcontext = FUNC2(prunestate->prune_context);

	/*
	 * For each hierarchy, do the pruning tests, and add nondeletable
	 * subplans' indexes to "result".
	 */
	for (i = 0; i < prunestate->num_partprunedata; i++)
	{
		PartitionPruningData *prunedata;
		PartitionedRelPruningData *pprune;

		prunedata = prunestate->partprunedata[i];
		pprune = &prunedata->partrelprunedata[0];

		FUNC6(prunedata, pprune, false, &result);

		/* Expression eval may have used space in node's ps_ExprContext too */
		if (pprune->exec_pruning_steps)
			FUNC3(pprune->exec_context.planstate->ps_ExprContext);
	}

	/* Add in any subplans that partition pruning didn't account for */
	result = FUNC4(result, prunestate->other_subplans);

	FUNC2(oldcontext);

	/* Copy result out of the temp context before we reset it */
	result = FUNC5(result);

	FUNC1(prunestate->prune_context);

	return result;
}