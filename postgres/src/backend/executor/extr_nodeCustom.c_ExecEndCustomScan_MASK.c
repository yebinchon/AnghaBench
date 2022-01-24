#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ps_ResultTupleSlot; } ;
struct TYPE_8__ {int /*<<< orphan*/  ss_ScanTupleSlot; TYPE_5__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; TYPE_1__* methods; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* EndCustomScan ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ CustomScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void
FUNC4(CustomScanState *node)
{
	FUNC0(node->methods->EndCustomScan != NULL);
	node->methods->EndCustomScan(node);

	/* Free the exprcontext */
	FUNC2(&node->ss.ps);

	/* Clean out the tuple table */
	FUNC1(node->ss.ps.ps_ResultTupleSlot);
	FUNC1(node->ss.ss_ScanTupleSlot);
}