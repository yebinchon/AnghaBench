#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* pa_finished; } ;
struct TYPE_4__ {int as_nplans; TYPE_3__* as_pstate; int /*<<< orphan*/  as_valid_subplans; TYPE_3__* as_prune_state; } ;
typedef  TYPE_1__ AppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(AppendState *node)
{
	int			i;

	/* Only valid to call this while in parallel Append mode */
	FUNC0(node->as_pstate);

	/* Shouldn't have been called when run-time pruning is not enabled */
	FUNC0(node->as_prune_state);

	/* Nothing to do if all plans are valid */
	if (FUNC2(node->as_valid_subplans) == node->as_nplans)
		return;

	/* Mark all non-valid plans as finished */
	for (i = 0; i < node->as_nplans; i++)
	{
		if (!FUNC1(i, node->as_valid_subplans))
			node->as_pstate->pa_finished[i] = true;
	}
}