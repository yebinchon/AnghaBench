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
struct TYPE_6__ {TYPE_1__* state; } ;
struct TYPE_7__ {int as_whichplan; int as_nplans; int /*<<< orphan*/ * as_valid_subplans; TYPE_2__ ps; int /*<<< orphan*/  as_prune_state; } ;
struct TYPE_5__ {int /*<<< orphan*/  es_direction; } ;
typedef  TYPE_3__ AppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int INVALID_SUBPLAN_INDEX ; 
 int NO_MATCHING_SUBPLANS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC5(AppendState *node)
{
	int			whichplan = node->as_whichplan;
	int			nextplan;

	/* We should never be called when there are no subplans */
	FUNC0(whichplan != NO_MATCHING_SUBPLANS);

	/*
	 * If first call then have the bms member function choose the first valid
	 * subplan by initializing whichplan to -1.  If there happen to be no
	 * valid subplans then the bms member function will handle that by
	 * returning a negative number which will allow us to exit returning a
	 * false value.
	 */
	if (whichplan == INVALID_SUBPLAN_INDEX)
	{
		if (node->as_valid_subplans == NULL)
			node->as_valid_subplans =
				FUNC1(node->as_prune_state);

		whichplan = -1;
	}

	/* Ensure whichplan is within the expected range */
	FUNC0(whichplan >= -1 && whichplan <= node->as_nplans);

	if (FUNC2(node->ps.state->es_direction))
		nextplan = FUNC3(node->as_valid_subplans, whichplan);
	else
		nextplan = FUNC4(node->as_valid_subplans, whichplan);

	if (nextplan < 0)
		return false;

	node->as_whichplan = nextplan;

	return true;
}