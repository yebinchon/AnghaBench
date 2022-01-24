#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_12__ {int /*<<< orphan*/  ecxt_innertuple; int /*<<< orphan*/  ecxt_outertuple; } ;
struct TYPE_9__ {int /*<<< orphan*/  ps_ProjInfo; int /*<<< orphan*/ * qual; TYPE_4__* ps_ExprContext; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ js; int /*<<< orphan*/  mj_NullInnerTupleSlot; int /*<<< orphan*/  mj_OuterTupleSlot; } ;
typedef  TYPE_3__ MergeJoinState ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_4__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static TupleTableSlot *
FUNC5(MergeJoinState *node)
{
	ExprContext *econtext = node->js.ps.ps_ExprContext;
	ExprState  *otherqual = node->js.ps.qual;

	FUNC4(econtext);

	econtext->ecxt_outertuple = node->mj_OuterTupleSlot;
	econtext->ecxt_innertuple = node->mj_NullInnerTupleSlot;

	if (FUNC1(otherqual, econtext))
	{
		/*
		 * qualification succeeded.  now form the desired projection tuple and
		 * return the slot containing it.
		 */
		FUNC3("ExecMergeJoin: returning outer fill tuple\n");

		return FUNC0(node->js.ps.ps_ProjInfo);
	}
	else
		FUNC2(node, 1);

	return NULL;
}