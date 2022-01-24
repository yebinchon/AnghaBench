#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_6__ {int /*<<< orphan*/  ps_ProjInfo; int /*<<< orphan*/  qual; int /*<<< orphan*/ * ps_ExprContext; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ ss; } ;
typedef  int /*<<< orphan*/  ExprContext ;
typedef  TYPE_3__ AggState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static TupleTableSlot *
FUNC3(AggState *aggstate)
{
	ExprContext *econtext = aggstate->ss.ps.ps_ExprContext;

	/*
	 * Check the qual (HAVING clause); if the group does not match, ignore it.
	 */
	if (FUNC1(aggstate->ss.ps.qual, econtext))
	{
		/*
		 * Form and return projection tuple using the aggregate results and
		 * the representative input tuple.
		 */
		return FUNC0(aggstate->ss.ps.ps_ProjInfo);
	}
	else
		FUNC2(aggstate, 1);

	return NULL;
}