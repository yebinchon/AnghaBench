#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_5__ ps; } ;
struct TYPE_8__ {TYPE_1__ js; } ;
typedef  TYPE_2__ NestLoopState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(NestLoopState *node)
{
	FUNC3("ExecEndNestLoop: %s\n",
			   "ending node processing");

	/*
	 * Free the exprcontext
	 */
	FUNC2(&node->js.ps);

	/*
	 * clean out the tuple table
	 */
	FUNC0(node->js.ps.ps_ResultTupleSlot);

	/*
	 * close down subplans
	 */
	FUNC1(FUNC5(node));
	FUNC1(FUNC4(node));

	FUNC3("ExecEndNestLoop: %s\n",
			   "node processing ended");
}