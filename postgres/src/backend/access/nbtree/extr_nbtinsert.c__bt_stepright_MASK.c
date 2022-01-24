#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int bounds_valid; int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  btpo_next; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  TYPE_1__* BTPageOpaque ;
typedef  TYPE_2__* BTInsertState ;

/* Variables and functions */
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(Relation rel, BTInsertState insertstate, BTStack stack)
{
	Page		page;
	BTPageOpaque lpageop;
	Buffer		rbuf;
	BlockNumber rblkno;

	page = FUNC0(insertstate->buf);
	lpageop = (BTPageOpaque) FUNC4(page);

	rbuf = InvalidBuffer;
	rblkno = lpageop->btpo_next;
	for (;;)
	{
		rbuf = FUNC7(rel, rbuf, rblkno, BT_WRITE);
		page = FUNC0(rbuf);
		lpageop = (BTPageOpaque) FUNC4(page);

		/*
		 * If this page was incompletely split, finish the split now.  We do
		 * this while holding a lock on the left sibling, which is not good
		 * because finishing the split could be a fairly lengthy operation.
		 * But this should happen very seldom.
		 */
		if (FUNC2(lpageop))
		{
			FUNC6(rel, rbuf, stack);
			rbuf = InvalidBuffer;
			continue;
		}

		if (!FUNC1(lpageop))
			break;
		if (FUNC3(lpageop))
			FUNC9(ERROR, "fell off the end of index \"%s\"",
				 FUNC5(rel));

		rblkno = lpageop->btpo_next;
	}
	/* rbuf locked; unlock buf, update state for caller */
	FUNC8(rel, insertstate->buf);
	insertstate->buf = rbuf;
	insertstate->bounds_valid = false;
}