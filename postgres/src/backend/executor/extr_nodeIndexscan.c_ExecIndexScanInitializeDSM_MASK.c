#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  es_snapshot; } ;
struct TYPE_10__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_11__ {int /*<<< orphan*/  ss_currentRelation; TYPE_2__ ps; } ;
struct TYPE_13__ {scalar_t__ iss_NumRuntimeKeys; int /*<<< orphan*/  iss_NumOrderByKeys; int /*<<< orphan*/  iss_OrderByKeys; int /*<<< orphan*/  iss_NumScanKeys; int /*<<< orphan*/  iss_ScanKeys; int /*<<< orphan*/  iss_ScanDesc; scalar_t__ iss_RuntimeKeysReady; int /*<<< orphan*/  iss_RelationDesc; TYPE_3__ ss; int /*<<< orphan*/  iss_PscanLen; } ;
struct TYPE_12__ {int /*<<< orphan*/  toc; } ;
struct TYPE_9__ {int /*<<< orphan*/  plan_node_id; } ;
typedef  int /*<<< orphan*/  ParallelIndexScanDesc ;
typedef  TYPE_4__ ParallelContext ;
typedef  TYPE_5__ IndexScanState ;
typedef  TYPE_6__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(IndexScanState *node,
						   ParallelContext *pcxt)
{
	EState	   *estate = node->ss.ps.state;
	ParallelIndexScanDesc piscan;

	piscan = FUNC3(pcxt->toc, node->iss_PscanLen);
	FUNC1(node->ss.ss_currentRelation,
								  node->iss_RelationDesc,
								  estate->es_snapshot,
								  piscan);
	FUNC4(pcxt->toc, node->ss.ps.plan->plan_node_id, piscan);
	node->iss_ScanDesc =
		FUNC0(node->ss.ss_currentRelation,
								 node->iss_RelationDesc,
								 node->iss_NumScanKeys,
								 node->iss_NumOrderByKeys,
								 piscan);

	/*
	 * If no run-time keys to calculate or they are ready, go ahead and pass
	 * the scankeys to the index AM.
	 */
	if (node->iss_NumRuntimeKeys == 0 || node->iss_RuntimeKeysReady)
		FUNC2(node->iss_ScanDesc,
					 node->iss_ScanKeys, node->iss_NumScanKeys,
					 node->iss_OrderByKeys, node->iss_NumOrderByKeys);
}