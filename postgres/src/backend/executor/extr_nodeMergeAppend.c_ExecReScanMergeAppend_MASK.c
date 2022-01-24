#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * chgParam; } ;
struct TYPE_11__ {int ms_nplans; int ms_initialized; int /*<<< orphan*/  ms_heap; TYPE_2__ ps; TYPE_3__** mergeplans; int /*<<< orphan*/ * ms_valid_subplans; TYPE_1__* ms_prune_state; } ;
struct TYPE_10__ {int /*<<< orphan*/ * chgParam; } ;
struct TYPE_8__ {int /*<<< orphan*/  execparamids; } ;
typedef  TYPE_3__ PlanState ;
typedef  TYPE_4__ MergeAppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(MergeAppendState *node)
{
	int			i;

	/*
	 * If any PARAM_EXEC Params used in pruning expressions have changed, then
	 * we'd better unset the valid subplans so that they are reselected for
	 * the new parameter values.
	 */
	if (node->ms_prune_state &&
		FUNC4(node->ps.chgParam,
					node->ms_prune_state->execparamids))
	{
		FUNC3(node->ms_valid_subplans);
		node->ms_valid_subplans = NULL;
	}

	for (i = 0; i < node->ms_nplans; i++)
	{
		PlanState  *subnode = node->mergeplans[i];

		/*
		 * ExecReScan doesn't know about my subplans, so I have to do
		 * changed-parameter signaling myself.
		 */
		if (node->ps.chgParam != NULL)
			FUNC1(subnode, node->ps.chgParam);

		/*
		 * If chgParam of subnode is not null then plan will be re-scanned by
		 * first ExecProcNode.
		 */
		if (subnode->chgParam == NULL)
			FUNC0(subnode);
	}
	FUNC2(node->ms_heap);
	node->ms_initialized = false;
}