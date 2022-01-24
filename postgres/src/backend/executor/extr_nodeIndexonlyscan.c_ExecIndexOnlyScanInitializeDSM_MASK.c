#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int xs_want_itup; } ;
struct TYPE_16__ {int /*<<< orphan*/  es_snapshot; } ;
struct TYPE_12__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_13__ {int /*<<< orphan*/  ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_15__ {scalar_t__ ioss_NumRuntimeKeys; int /*<<< orphan*/  ioss_NumOrderByKeys; int /*<<< orphan*/  ioss_OrderByKeys; int /*<<< orphan*/  ioss_NumScanKeys; int /*<<< orphan*/  ioss_ScanKeys; TYPE_7__* ioss_ScanDesc; scalar_t__ ioss_RuntimeKeysReady; int /*<<< orphan*/  ioss_VMBuffer; int /*<<< orphan*/  ioss_RelationDesc; TYPE_3__ ss; int /*<<< orphan*/  ioss_PscanLen; } ;
struct TYPE_14__ {int /*<<< orphan*/  toc; } ;
struct TYPE_11__ {int /*<<< orphan*/  plan_node_id; } ;
typedef  int /*<<< orphan*/  ParallelIndexScanDesc ;
typedef  TYPE_4__ ParallelContext ;
typedef  TYPE_5__ IndexOnlyScanState ;
typedef  TYPE_6__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBuffer ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(IndexOnlyScanState *node,
							   ParallelContext *pcxt)
{
	EState	   *estate = node->ss.ps.state;
	ParallelIndexScanDesc piscan;

	piscan = FUNC3(pcxt->toc, node->ioss_PscanLen);
	FUNC1(node->ss.ss_currentRelation,
								  node->ioss_RelationDesc,
								  estate->es_snapshot,
								  piscan);
	FUNC4(pcxt->toc, node->ss.ps.plan->plan_node_id, piscan);
	node->ioss_ScanDesc =
		FUNC0(node->ss.ss_currentRelation,
								 node->ioss_RelationDesc,
								 node->ioss_NumScanKeys,
								 node->ioss_NumOrderByKeys,
								 piscan);
	node->ioss_ScanDesc->xs_want_itup = true;
	node->ioss_VMBuffer = InvalidBuffer;

	/*
	 * If no run-time keys to calculate or they are ready, go ahead and pass
	 * the scankeys to the index AM.
	 */
	if (node->ioss_NumRuntimeKeys == 0 || node->ioss_RuntimeKeysReady)
		FUNC2(node->ioss_ScanDesc,
					 node->ioss_ScanKeys, node->ioss_NumScanKeys,
					 node->ioss_OrderByKeys, node->ioss_NumOrderByKeys);
}