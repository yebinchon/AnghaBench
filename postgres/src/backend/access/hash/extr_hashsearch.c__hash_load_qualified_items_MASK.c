#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ hashso_sk_hash; int /*<<< orphan*/  hashso_buc_split; scalar_t__ hashso_buc_populated; } ;
struct TYPE_11__ {scalar_t__ ignore_killed_tuples; int /*<<< orphan*/  opaque; } ;
struct TYPE_10__ {int t_info; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  TYPE_3__* HashScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstOffsetNumber ; 
 int INDEX_MOVED_BY_SPLIT_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(IndexScanDesc scan, Page page,
						   OffsetNumber offnum, ScanDirection dir)
{
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	IndexTuple	itup;
	int			itemIndex;
	OffsetNumber maxoff;

	maxoff = FUNC6(page);

	if (FUNC7(dir))
	{
		/* load items[] in ascending order */
		itemIndex = 0;

		while (offnum <= maxoff)
		{
			FUNC0(offnum >= FirstOffsetNumber);
			itup = (IndexTuple) FUNC4(page, FUNC5(page, offnum));

			/*
			 * skip the tuples that are moved by split operation for the scan
			 * that has started when split was in progress. Also, skip the
			 * tuples that are marked as dead.
			 */
			if ((so->hashso_buc_populated && !so->hashso_buc_split &&
				 (itup->t_info & INDEX_MOVED_BY_SPLIT_MASK)) ||
				(scan->ignore_killed_tuples &&
				 (FUNC1(FUNC5(page, offnum)))))
			{
				offnum = FUNC2(offnum);	/* move forward */
				continue;
			}

			if (so->hashso_sk_hash == FUNC9(itup) &&
				FUNC8(scan, itup))
			{
				/* tuple is qualified, so remember it */
				FUNC10(so, itemIndex, offnum, itup);
				itemIndex++;
			}
			else
			{
				/*
				 * No more matching tuples exist in this page. so, exit while
				 * loop.
				 */
				break;
			}

			offnum = FUNC2(offnum);
		}

		FUNC0(itemIndex <= MaxIndexTuplesPerPage);
		return itemIndex;
	}
	else
	{
		/* load items[] in descending order */
		itemIndex = MaxIndexTuplesPerPage;

		while (offnum >= FirstOffsetNumber)
		{
			FUNC0(offnum <= maxoff);
			itup = (IndexTuple) FUNC4(page, FUNC5(page, offnum));

			/*
			 * skip the tuples that are moved by split operation for the scan
			 * that has started when split was in progress. Also, skip the
			 * tuples that are marked as dead.
			 */
			if ((so->hashso_buc_populated && !so->hashso_buc_split &&
				 (itup->t_info & INDEX_MOVED_BY_SPLIT_MASK)) ||
				(scan->ignore_killed_tuples &&
				 (FUNC1(FUNC5(page, offnum)))))
			{
				offnum = FUNC3(offnum);	/* move back */
				continue;
			}

			if (so->hashso_sk_hash == FUNC9(itup) &&
				FUNC8(scan, itup))
			{
				itemIndex--;
				/* tuple is qualified, so remember it */
				FUNC10(so, itemIndex, offnum, itup);
			}
			else
			{
				/*
				 * No more matching tuples exist in this page. so, exit while
				 * loop.
				 */
				break;
			}

			offnum = FUNC3(offnum);
		}

		FUNC0(itemIndex >= 0);
		return itemIndex;
	}
}