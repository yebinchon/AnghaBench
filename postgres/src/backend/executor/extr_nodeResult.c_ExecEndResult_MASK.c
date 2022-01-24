#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ps_ResultTupleSlot; } ;
struct TYPE_5__ {TYPE_3__ ps; } ;
typedef  TYPE_1__ ResultState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(ResultState *node)
{
	/*
	 * Free the exprcontext
	 */
	FUNC2(&node->ps);

	/*
	 * clean out the tuple table
	 */
	FUNC0(node->ps.ps_ResultTupleSlot);

	/*
	 * shut down subplans
	 */
	FUNC1(FUNC3(node));
}