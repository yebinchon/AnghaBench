#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lastFilledBlock; TYPE_1__* stats; TYPE_2__* info; } ;
typedef  TYPE_3__ spgBulkDeleteState ;
struct TYPE_8__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
struct TYPE_7__ {int /*<<< orphan*/  pages_deleted; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void
FUNC14(spgBulkDeleteState *bds, BlockNumber blkno)
{
	Relation	index = bds->info->index;
	Buffer		buffer;
	Page		page;

	/* call vacuum_delay_point while not holding any buffer lock */
	FUNC13();

	buffer = FUNC4(index, MAIN_FORKNUM, blkno,
								RBM_NORMAL, bds->info->strategy);
	FUNC1(buffer, BUFFER_LOCK_EXCLUSIVE);
	page = (Page) FUNC0(buffer);

	if (FUNC3(page))
	{
		/*
		 * We found an all-zero page, which could happen if the database
		 * crashed just after extending the file.  Recycle it.
		 */
	}
	else if (FUNC2(page))
	{
		/* nothing to do */
	}
	else if (FUNC7(page))
	{
		if (FUNC6(blkno))
		{
			FUNC11(bds, index, buffer);
			/* no need for vacuumRedirectAndPlaceholder */
		}
		else
		{
			FUNC10(bds, index, buffer, false);
			FUNC12(index, buffer);
		}
	}
	else
	{
		/* inner page */
		FUNC12(index, buffer);
	}

	/*
	 * The root pages must never be deleted, nor marked as available in FSM,
	 * because we don't want them ever returned by a search for a place to put
	 * a new tuple.  Otherwise, check for empty page, and make sure the FSM
	 * knows about it.
	 */
	if (!FUNC6(blkno))
	{
		if (FUNC3(page) || FUNC2(page))
		{
			FUNC5(index, blkno);
			bds->stats->pages_deleted++;
		}
		else
		{
			FUNC8(index, buffer);
			bds->lastFilledBlock = blkno;
		}
	}

	FUNC9(buffer);
}