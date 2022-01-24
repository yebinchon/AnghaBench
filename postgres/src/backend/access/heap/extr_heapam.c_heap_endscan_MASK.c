#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_4__ {int rs_flags; int /*<<< orphan*/  rs_snapshot; TYPE_2__* rs_key; int /*<<< orphan*/  rs_rd; } ;
struct TYPE_5__ {TYPE_1__ rs_base; int /*<<< orphan*/ * rs_strategy; int /*<<< orphan*/  rs_cbuf; } ;
typedef  TYPE_2__* HeapScanDesc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SO_TEMP_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6(TableScanDesc sscan)
{
	HeapScanDesc scan = (HeapScanDesc) sscan;

	/* Note: no locking manipulations needed */

	/*
	 * unpin scan buffers
	 */
	if (FUNC0(scan->rs_cbuf))
		FUNC3(scan->rs_cbuf);

	/*
	 * decrement relation reference count and free scan descriptor storage
	 */
	FUNC2(scan->rs_base.rs_rd);

	if (scan->rs_base.rs_key)
		FUNC5(scan->rs_base.rs_key);

	if (scan->rs_strategy != NULL)
		FUNC1(scan->rs_strategy);

	if (scan->rs_base.rs_flags & SO_TEMP_SNAPSHOT)
		FUNC4(scan->rs_base.rs_snapshot);

	FUNC5(scan);
}