#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  es_snapshot; } ;
struct TYPE_8__ {TYPE_5__* state; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_11__ {int /*<<< orphan*/  ioss_PscanLen; int /*<<< orphan*/  ioss_RelationDesc; TYPE_2__ ss; } ;
struct TYPE_10__ {int /*<<< orphan*/  estimator; } ;
typedef  TYPE_3__ ParallelContext ;
typedef  TYPE_4__ IndexOnlyScanState ;
typedef  TYPE_5__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void
FUNC3(IndexOnlyScanState *node,
						  ParallelContext *pcxt)
{
	EState	   *estate = node->ss.ps.state;

	node->ioss_PscanLen = FUNC0(node->ioss_RelationDesc,
													  estate->es_snapshot);
	FUNC1(&pcxt->estimator, node->ioss_PscanLen);
	FUNC2(&pcxt->estimator, 1);
}