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
struct TYPE_11__ {int /*<<< orphan*/  estimator; } ;
struct TYPE_8__ {TYPE_5__* state; } ;
struct TYPE_9__ {int /*<<< orphan*/  ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_10__ {int /*<<< orphan*/  pscan_len; TYPE_2__ ss; } ;
typedef  TYPE_3__ SeqScanState ;
typedef  TYPE_4__ ParallelContext ;
typedef  TYPE_5__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(SeqScanState *node,
					ParallelContext *pcxt)
{
	EState	   *estate = node->ss.ps.state;

	node->pscan_len = FUNC2(node->ss.ss_currentRelation,
												  estate->es_snapshot);
	FUNC0(&pcxt->estimator, node->pscan_len);
	FUNC1(&pcxt->estimator, 1);
}