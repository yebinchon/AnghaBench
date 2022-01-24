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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  TYPE_1__* TableScanDesc ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; scalar_t__ t_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  rd_id; } ;
struct TYPE_7__ {size_t rs_cindex; size_t rs_ntuples; int /*<<< orphan*/  rs_cbuf; TYPE_5__ rs_ctup; int /*<<< orphan*/  rs_cblock; int /*<<< orphan*/ * rs_vistuples; } ;
struct TYPE_6__ {TYPE_3__* rs_rd; } ;
typedef  int /*<<< orphan*/  TBMIterateResult ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_2__* HeapScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static bool
FUNC9(TableScanDesc scan,
							  TBMIterateResult *tbmres,
							  TupleTableSlot *slot)
{
	HeapScanDesc hscan = (HeapScanDesc) scan;
	OffsetNumber targoffset;
	Page		dp;
	ItemId		lp;

	/*
	 * Out of range?  If so, nothing more to look at on this page
	 */
	if (hscan->rs_cindex < 0 || hscan->rs_cindex >= hscan->rs_ntuples)
		return false;

	targoffset = hscan->rs_vistuples[hscan->rs_cindex];
	dp = (Page) FUNC1(hscan->rs_cbuf);
	lp = FUNC7(dp, targoffset);
	FUNC0(FUNC4(lp));

	hscan->rs_ctup.t_data = (HeapTupleHeader) FUNC6((Page) dp, lp);
	hscan->rs_ctup.t_len = FUNC3(lp);
	hscan->rs_ctup.t_tableOid = scan->rs_rd->rd_id;
	FUNC5(&hscan->rs_ctup.t_self, hscan->rs_cblock, targoffset);

	FUNC8(scan->rs_rd);

	/*
	 * Set up the result slot to point to this tuple.  Note that the slot
	 * acquires a pin on the buffer.
	 */
	FUNC2(&hscan->rs_ctup,
							 slot,
							 hscan->rs_cbuf);

	hscan->rs_cindex++;

	return true;
}