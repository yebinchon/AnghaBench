#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ firstOffset; scalar_t__ lastOffset; int /*<<< orphan*/  item; int /*<<< orphan*/  pendingBuffer; } ;
typedef  TYPE_1__ pendingPosition ;
struct TYPE_10__ {scalar_t__ rightlink; } ;
struct TYPE_9__ {int /*<<< orphan*/  indexRelation; int /*<<< orphan*/  xs_snapshot; } ;
struct TYPE_8__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_2__* IndexTuple ;
typedef  TYPE_3__* IndexScanDesc ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12(IndexScanDesc scan, pendingPosition *pos)
{
	OffsetNumber maxoff;
	Page		page;
	IndexTuple	itup;

	FUNC4(&pos->item);
	for (;;)
	{
		page = FUNC0(pos->pendingBuffer);
		FUNC10(scan->xs_snapshot, scan->indexRelation, page);

		maxoff = FUNC8(page);
		if (pos->firstOffset > maxoff)
		{
			BlockNumber blkno = FUNC1(page)->rightlink;

			if (blkno == InvalidBlockNumber)
			{
				FUNC11(pos->pendingBuffer);
				pos->pendingBuffer = InvalidBuffer;

				return false;
			}
			else
			{
				/*
				 * Here we must prevent deletion of next page by insertcleanup
				 * process, which may be trying to obtain exclusive lock on
				 * current page.  So, we lock next page before releasing the
				 * current one
				 */
				Buffer		tmpbuf = FUNC9(scan->indexRelation, blkno);

				FUNC5(tmpbuf, GIN_SHARE);
				FUNC11(pos->pendingBuffer);

				pos->pendingBuffer = tmpbuf;
				pos->firstOffset = FirstOffsetNumber;
			}
		}
		else
		{
			itup = (IndexTuple) FUNC6(page, FUNC7(page, pos->firstOffset));
			pos->item = itup->t_tid;
			if (FUNC2(page))
			{
				/*
				 * find itempointer to the next row
				 */
				for (pos->lastOffset = pos->firstOffset + 1; pos->lastOffset <= maxoff; pos->lastOffset++)
				{
					itup = (IndexTuple) FUNC6(page, FUNC7(page, pos->lastOffset));
					if (!FUNC3(&pos->item, &itup->t_tid))
						break;
				}
			}
			else
			{
				/*
				 * All itempointers are the same on this page
				 */
				pos->lastOffset = maxoff + 1;
			}

			/*
			 * Now pos->firstOffset points to the first tuple of current heap
			 * row, pos->lastOffset points to the first tuple of next heap row
			 * (or to the end of page)
			 */
			break;
		}
	}

	return true;
}