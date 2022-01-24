#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  (* InitializeWorkerForeignScan ) (TYPE_5__*,int /*<<< orphan*/ ,void*) ;} ;
struct TYPE_11__ {TYPE_1__* plan; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;
struct TYPE_14__ {TYPE_3__ ss; TYPE_6__* fdwroutine; } ;
struct TYPE_13__ {int /*<<< orphan*/  toc; } ;
struct TYPE_10__ {int plan_node_id; } ;
typedef  TYPE_4__ ParallelWorkerContext ;
typedef  TYPE_5__ ForeignScanState ;
typedef  TYPE_6__ FdwRoutine ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,void*) ; 

void
FUNC2(ForeignScanState *node,
								ParallelWorkerContext *pwcxt)
{
	FdwRoutine *fdwroutine = node->fdwroutine;

	if (fdwroutine->InitializeWorkerForeignScan)
	{
		int			plan_node_id = node->ss.ps.plan->plan_node_id;
		void	   *coordinate;

		coordinate = FUNC0(pwcxt->toc, plan_node_id, false);
		fdwroutine->InitializeWorkerForeignScan(node, pwcxt->toc, coordinate);
	}
}