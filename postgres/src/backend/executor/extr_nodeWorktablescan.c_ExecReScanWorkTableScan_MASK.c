#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__* rustate; TYPE_4__ ss; } ;
typedef  TYPE_3__ WorkTableScanState ;
struct TYPE_7__ {int /*<<< orphan*/  working_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(WorkTableScanState *node)
{
	if (node->ss.ps.ps_ResultTupleSlot)
		FUNC0(node->ss.ps.ps_ResultTupleSlot);

	FUNC1(&node->ss);

	/* No need (or way) to rescan if ExecWorkTableScan not called yet */
	if (node->rustate)
		FUNC2(node->rustate->working_table);
}