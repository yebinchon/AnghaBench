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
struct TYPE_13__ {int /*<<< orphan*/  toc; } ;
struct TYPE_10__ {TYPE_1__* plan; TYPE_6__* state; } ;
struct TYPE_11__ {int /*<<< orphan*/  ss_currentRelation; int /*<<< orphan*/  ss_currentScanDesc; TYPE_2__ ps; } ;
struct TYPE_12__ {TYPE_3__ ss; int /*<<< orphan*/  pscan_len; } ;
struct TYPE_9__ {int /*<<< orphan*/  plan_node_id; } ;
typedef  TYPE_4__ SeqScanState ;
typedef  int /*<<< orphan*/  ParallelTableScanDesc ;
typedef  TYPE_5__ ParallelContext ;
typedef  TYPE_6__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(SeqScanState *node,
						 ParallelContext *pcxt)
{
	EState	   *estate = node->ss.ps.state;
	ParallelTableScanDesc pscan;

	pscan = FUNC0(pcxt->toc, node->pscan_len);
	FUNC3(node->ss.ss_currentRelation,
								  pscan,
								  estate->es_snapshot);
	FUNC1(pcxt->toc, node->ss.ps.plan->plan_node_id, pscan);
	node->ss.ss_currentScanDesc =
		FUNC2(node->ss.ss_currentRelation, pscan);
}