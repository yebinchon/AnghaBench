#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_6__ {TYPE_4__ ps; } ;
typedef  TYPE_1__ GatherState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(GatherState *node)
{
	FUNC1(FUNC4(node));	/* let children clean up first */
	FUNC3(node);
	FUNC2(&node->ps);
	if (node->ps.ps_ResultTupleSlot)
		FUNC0(node->ps.ps_ResultTupleSlot);
}