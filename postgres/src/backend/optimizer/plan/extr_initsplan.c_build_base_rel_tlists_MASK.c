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
struct TYPE_6__ {TYPE_1__* parse; } ;
struct TYPE_5__ {int /*<<< orphan*/ * havingQual; } ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int PVC_INCLUDE_PLACEHOLDERS ; 
 int PVC_RECURSE_AGGREGATES ; 
 int PVC_RECURSE_WINDOWFUNCS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(PlannerInfo *root, List *final_tlist)
{
	List	   *tlist_vars = FUNC3((Node *) final_tlist,
											 PVC_RECURSE_AGGREGATES |
											 PVC_RECURSE_WINDOWFUNCS |
											 PVC_INCLUDE_PLACEHOLDERS);

	if (tlist_vars != NIL)
	{
		FUNC0(root, tlist_vars, FUNC1(0), true);
		FUNC2(tlist_vars);
	}

	/*
	 * If there's a HAVING clause, we'll need the Vars it uses, too.  Note
	 * that HAVING can contain Aggrefs but not WindowFuncs.
	 */
	if (root->parse->havingQual)
	{
		List	   *having_vars = FUNC3(root->parse->havingQual,
												  PVC_RECURSE_AGGREGATES |
												  PVC_INCLUDE_PLACEHOLDERS);

		if (having_vars != NIL)
		{
			FUNC0(root, having_vars,
								   FUNC1(0), true);
			FUNC2(having_vars);
		}
	}
}