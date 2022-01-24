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
struct TYPE_15__ {int xs_want_itup; } ;
struct TYPE_11__ {TYPE_1__* plan; } ;
struct TYPE_12__ {int /*<<< orphan*/  ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_14__ {scalar_t__ ioss_NumRuntimeKeys; int /*<<< orphan*/  ioss_NumOrderByKeys; int /*<<< orphan*/  ioss_OrderByKeys; int /*<<< orphan*/  ioss_NumScanKeys; int /*<<< orphan*/  ioss_ScanKeys; TYPE_6__* ioss_ScanDesc; scalar_t__ ioss_RuntimeKeysReady; int /*<<< orphan*/  ioss_RelationDesc; TYPE_3__ ss; } ;
struct TYPE_13__ {int /*<<< orphan*/  toc; } ;
struct TYPE_10__ {int /*<<< orphan*/  plan_node_id; } ;
typedef  TYPE_4__ ParallelWorkerContext ;
typedef  int /*<<< orphan*/  ParallelIndexScanDesc ;
typedef  TYPE_5__ IndexOnlyScanState ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(IndexOnlyScanState *node,
								  ParallelWorkerContext *pwcxt)
{
	ParallelIndexScanDesc piscan;

	piscan = FUNC2(pwcxt->toc, node->ss.ps.plan->plan_node_id, false);
	node->ioss_ScanDesc =
		FUNC0(node->ss.ss_currentRelation,
								 node->ioss_RelationDesc,
								 node->ioss_NumScanKeys,
								 node->ioss_NumOrderByKeys,
								 piscan);
	node->ioss_ScanDesc->xs_want_itup = true;

	/*
	 * If no run-time keys to calculate or they are ready, go ahead and pass
	 * the scankeys to the index AM.
	 */
	if (node->ioss_NumRuntimeKeys == 0 || node->ioss_RuntimeKeysReady)
		FUNC1(node->ioss_ScanDesc,
					 node->ioss_ScanKeys, node->ioss_NumScanKeys,
					 node->ioss_OrderByKeys, node->ioss_NumOrderByKeys);
}