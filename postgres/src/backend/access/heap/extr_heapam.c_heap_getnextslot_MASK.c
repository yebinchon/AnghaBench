#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  TYPE_2__* TableScanDesc ;
struct TYPE_11__ {int /*<<< orphan*/ * t_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  rs_rd; } ;
struct TYPE_10__ {int /*<<< orphan*/  rs_cbuf; TYPE_7__ rs_ctup; TYPE_1__ rs_base; } ;
struct TYPE_9__ {int rs_flags; int /*<<< orphan*/  rs_key; int /*<<< orphan*/  rs_nkeys; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_3__* HeapScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAPAMSLOTDEBUG_1 ; 
 int /*<<< orphan*/  HEAPAMSLOTDEBUG_2 ; 
 int /*<<< orphan*/  HEAPAMSLOTDEBUG_3 ; 
 int SO_ALLOW_PAGEMODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool
FUNC5(TableScanDesc sscan, ScanDirection direction, TupleTableSlot *slot)
{
	HeapScanDesc scan = (HeapScanDesc) sscan;

	/* Note: no locking manipulations needed */

	HEAPAMSLOTDEBUG_1;			/* heap_getnextslot( info ) */

	if (sscan->rs_flags & SO_ALLOW_PAGEMODE)
		FUNC3(scan, direction, sscan->rs_nkeys, sscan->rs_key);
	else
		FUNC2(scan, direction, sscan->rs_nkeys, sscan->rs_key);

	if (scan->rs_ctup.t_data == NULL)
	{
		HEAPAMSLOTDEBUG_2;		/* heap_getnextslot returning EOS */
		FUNC0(slot);
		return false;
	}

	/*
	 * if we get here it means we have a new current scan tuple, so point to
	 * the proper return buffer and return the tuple.
	 */
	HEAPAMSLOTDEBUG_3;			/* heap_getnextslot returning tuple */

	FUNC4(scan->rs_base.rs_rd);

	FUNC1(&scan->rs_ctup, slot,
							 scan->rs_cbuf);
	return true;
}