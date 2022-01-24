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
struct TYPE_11__ {int /*<<< orphan*/  es_direction; } ;
struct TYPE_10__ {scalar_t__ subLinkType; scalar_t__ setParam; scalar_t__ useHashTable; } ;
struct TYPE_9__ {TYPE_1__* planstate; TYPE_3__* subplan; } ;
struct TYPE_8__ {TYPE_4__* state; } ;
typedef  TYPE_2__ SubPlanState ;
typedef  TYPE_3__ SubPlan ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  TYPE_4__ EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CTE_SUBLINK ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ MULTIEXPR_SUBLINK ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

Datum
FUNC4(SubPlanState *node,
			ExprContext *econtext,
			bool *isNull)
{
	SubPlan    *subplan = node->subplan;
	EState	   *estate = node->planstate->state;
	ScanDirection dir = estate->es_direction;
	Datum		retval;

	FUNC0();

	/* Set non-null as default */
	*isNull = false;

	/* Sanity checks */
	if (subplan->subLinkType == CTE_SUBLINK)
		FUNC3(ERROR, "CTE subplans should not be executed via ExecSubPlan");
	if (subplan->setParam != NIL && subplan->subLinkType != MULTIEXPR_SUBLINK)
		FUNC3(ERROR, "cannot set parent params from subquery");

	/* Force forward-scan mode for evaluation */
	estate->es_direction = ForwardScanDirection;

	/* Select appropriate evaluation strategy */
	if (subplan->useHashTable)
		retval = FUNC1(node, econtext, isNull);
	else
		retval = FUNC2(node, econtext, isNull);

	/* restore scan direction */
	estate->es_direction = dir;

	return retval;
}