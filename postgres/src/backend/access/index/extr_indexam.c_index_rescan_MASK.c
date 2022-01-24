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
struct TYPE_8__ {int numberOfKeys; int numberOfOrderBys; int kill_prior_tuple; int xs_heap_continue; TYPE_2__* indexRelation; scalar_t__ xs_heapfetch; } ;
struct TYPE_7__ {TYPE_1__* rd_indam; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* amrescan ) (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  ScanKey ;
typedef  TYPE_3__* IndexScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CHECKS ; 
 int /*<<< orphan*/  amrescan ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(IndexScanDesc scan,
			 ScanKey keys, int nkeys,
			 ScanKey orderbys, int norderbys)
{
	SCAN_CHECKS;
	FUNC1(amrescan);

	FUNC0(nkeys == scan->numberOfKeys);
	FUNC0(norderbys == scan->numberOfOrderBys);

	/* Release resources (like buffer pins) from table accesses */
	if (scan->xs_heapfetch)
		FUNC3(scan->xs_heapfetch);

	scan->kill_prior_tuple = false; /* for safety */
	scan->xs_heap_continue = false;

	scan->indexRelation->rd_indam->amrescan(scan, keys, nkeys,
											orderbys, norderbys);
}