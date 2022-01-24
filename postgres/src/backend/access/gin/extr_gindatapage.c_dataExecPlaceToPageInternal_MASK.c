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
struct TYPE_6__ {int /*<<< orphan*/  newitem; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ ginxlogInsertDataInternal ;
struct TYPE_8__ {int /*<<< orphan*/  isBuild; int /*<<< orphan*/  index; } ;
struct TYPE_7__ {int /*<<< orphan*/  off; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_2__ GinBtreeStack ;
typedef  TYPE_3__* GinBtree ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(GinBtree btree, Buffer buf, GinBtreeStack *stack,
							void *insertdata, BlockNumber updateblkno,
							void *ptp_workspace)
{
	Page		page = FUNC0(buf);
	OffsetNumber off = stack->off;
	PostingItem *pitem;

	/* Update existing downlink to point to next page (on internal page) */
	pitem = FUNC2(page, off);
	FUNC3(pitem, updateblkno);

	/* Add new item */
	pitem = (PostingItem *) insertdata;
	FUNC1(page, pitem, off);

	if (FUNC4(btree->index) && !btree->isBuild)
	{
		/*
		 * This must be static, because it has to survive until XLogInsert,
		 * and we can't palloc here.  Ugly, but the XLogInsert infrastructure
		 * isn't reentrant anyway.
		 */
		static ginxlogInsertDataInternal data;

		data.offset = off;
		data.newitem = *pitem;

		FUNC5(0, (char *) &data,
							sizeof(ginxlogInsertDataInternal));
	}
}