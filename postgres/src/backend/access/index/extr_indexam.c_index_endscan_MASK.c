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
struct TYPE_9__ {TYPE_1__* rd_indam; } ;
struct TYPE_8__ {int /*<<< orphan*/  xs_snapshot; scalar_t__ xs_temp_snap; TYPE_5__* indexRelation; int /*<<< orphan*/ * xs_heapfetch; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* amendscan ) (TYPE_2__*) ;} ;
typedef  TYPE_2__* IndexScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  SCAN_CHECKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amendscan ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(IndexScanDesc scan)
{
	SCAN_CHECKS;
	FUNC0(amendscan);

	/* Release resources (like buffer pins) from table accesses */
	if (scan->xs_heapfetch)
	{
		FUNC5(scan->xs_heapfetch);
		scan->xs_heapfetch = NULL;
	}

	/* End the AM's scan */
	scan->indexRelation->rd_indam->amendscan(scan);

	/* Release index refcount acquired by index_beginscan */
	FUNC2(scan->indexRelation);

	if (scan->xs_temp_snap)
		FUNC3(scan->xs_snapshot);

	/* Release the scan data structure itself */
	FUNC1(scan);
}