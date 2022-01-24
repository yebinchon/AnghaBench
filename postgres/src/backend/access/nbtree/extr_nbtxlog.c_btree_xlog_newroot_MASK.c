#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ level; } ;
typedef  TYPE_2__ xl_btree_newroot ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_13__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_3__ XLogReaderState ;
struct TYPE_11__ {scalar_t__ level; } ;
struct TYPE_14__ {scalar_t__ btpo_cycleid; int /*<<< orphan*/  btpo_flags; TYPE_1__ btpo; int /*<<< orphan*/  btpo_next; int /*<<< orphan*/  btpo_prev; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_4__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BTP_LEAF ; 
 int /*<<< orphan*/  BTP_ROOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_NONE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_btree_newroot *xlrec = (xl_btree_newroot *) FUNC8(record);
	Buffer		buffer;
	Page		page;
	BTPageOpaque pageop;
	char	   *ptr;
	Size		len;

	buffer = FUNC6(record, 0);
	page = (Page) FUNC0(buffer);

	FUNC10(page, FUNC1(buffer));
	pageop = (BTPageOpaque) FUNC3(page);

	pageop->btpo_flags = BTP_ROOT;
	pageop->btpo_prev = pageop->btpo_next = P_NONE;
	pageop->btpo.level = xlrec->level;
	if (xlrec->level == 0)
		pageop->btpo_flags |= BTP_LEAF;
	pageop->btpo_cycleid = 0;

	if (xlrec->level > 0)
	{
		ptr = FUNC7(record, 0, &len);
		FUNC12(page, ptr, len);

		/* Clear the incomplete-split flag in left child */
		FUNC9(record, 1);
	}

	FUNC4(page, lsn);
	FUNC2(buffer);
	FUNC5(buffer);

	FUNC11(record, 2);
}