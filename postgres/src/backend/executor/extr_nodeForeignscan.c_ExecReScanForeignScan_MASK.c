#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ss; TYPE_1__* fdwroutine; } ;
struct TYPE_10__ {int /*<<< orphan*/ * chgParam; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* ReScanForeignScan ) (TYPE_3__*) ;} ;
typedef  TYPE_2__ PlanState ;
typedef  TYPE_3__ ForeignScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void
FUNC4(ForeignScanState *node)
{
	PlanState  *outerPlan = FUNC2(node);

	node->fdwroutine->ReScanForeignScan(node);

	/*
	 * If chgParam of subnode is not null then plan will be re-scanned by
	 * first ExecProcNode.  outerPlan may also be NULL, in which case there is
	 * nothing to rescan at all.
	 */
	if (outerPlan != NULL && outerPlan->chgParam == NULL)
		FUNC0(outerPlan);

	FUNC1(&node->ss);
}