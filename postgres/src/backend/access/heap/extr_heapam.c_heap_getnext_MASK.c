#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* TableScanDesc ;
struct TYPE_13__ {int /*<<< orphan*/ * t_data; } ;
struct TYPE_10__ {int rs_flags; int /*<<< orphan*/  rs_rd; int /*<<< orphan*/  rs_key; int /*<<< orphan*/  rs_nkeys; } ;
struct TYPE_14__ {TYPE_4__ rs_ctup; TYPE_1__ rs_base; } ;
struct TYPE_12__ {TYPE_2__* rs_rd; } ;
struct TYPE_11__ {scalar_t__ rd_tableam; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* HeapScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  HEAPDEBUG_1 ; 
 int /*<<< orphan*/  HEAPDEBUG_2 ; 
 int /*<<< orphan*/  HEAPDEBUG_3 ; 
 int SO_ALLOW_PAGEMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

HeapTuple
FUNC8(TableScanDesc sscan, ScanDirection direction)
{
	HeapScanDesc scan = (HeapScanDesc) sscan;

	/*
	 * This is still widely used directly, without going through table AM, so
	 * add a safety check.  It's possible we should, at a later point,
	 * downgrade this to an assert. The reason for checking the AM routine,
	 * rather than the AM oid, is that this allows to write regression tests
	 * that create another AM reusing the heap handler.
	 */
	if (FUNC7(sscan->rs_rd->rd_tableam != FUNC0()))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("only heap AM is supported")));

	/* Note: no locking manipulations needed */

	HEAPDEBUG_1;				/* heap_getnext( info ) */

	if (scan->rs_base.rs_flags & SO_ALLOW_PAGEMODE)
		FUNC5(scan, direction,
							scan->rs_base.rs_nkeys, scan->rs_base.rs_key);
	else
		FUNC4(scan, direction,
				   scan->rs_base.rs_nkeys, scan->rs_base.rs_key);

	if (scan->rs_ctup.t_data == NULL)
	{
		HEAPDEBUG_2;			/* heap_getnext returning EOS */
		return NULL;
	}

	/*
	 * if we get here it means we have a new current scan tuple, so point to
	 * the proper return buffer and return the tuple.
	 */
	HEAPDEBUG_3;				/* heap_getnext returning tuple */

	FUNC6(scan->rs_base.rs_rd);

	return &scan->rs_ctup;
}