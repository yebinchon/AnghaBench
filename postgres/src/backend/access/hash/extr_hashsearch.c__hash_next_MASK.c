#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ itemIndex; scalar_t__ lastItem; scalar_t__ firstItem; TYPE_2__* items; int /*<<< orphan*/  prevPage; int /*<<< orphan*/  nextPage; } ;
struct TYPE_11__ {scalar_t__ numKilled; scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; TYPE_8__ currPos; } ;
struct TYPE_10__ {int /*<<< orphan*/  heapTid; } ;
struct TYPE_9__ {int /*<<< orphan*/  xs_heaptid; int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  opaque; int /*<<< orphan*/  indexRelation; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__ HashScanPosItem ;
typedef  TYPE_3__* HashScanOpaque ;
typedef  scalar_t__ Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  HASH_READ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__) ; 
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 

bool
FUNC10(IndexScanDesc scan, ScanDirection dir)
{
	Relation	rel = scan->indexRelation;
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	HashScanPosItem *currItem;
	BlockNumber blkno;
	Buffer		buf;
	bool		end_of_scan = false;

	/*
	 * Advance to the next tuple on the current page; or if done, try to read
	 * data from the next or previous page based on the scan direction. Before
	 * moving to the next or previous page make sure that we deal with all the
	 * killed items.
	 */
	if (FUNC3(dir))
	{
		if (++so->currPos.itemIndex > so->currPos.lastItem)
		{
			if (so->numKilled > 0)
				FUNC8(scan);

			blkno = so->currPos.nextPage;
			if (FUNC0(blkno))
			{
				buf = FUNC7(rel, blkno, HASH_READ, LH_OVERFLOW_PAGE);
				FUNC4(scan->xs_snapshot, rel, FUNC1(buf));
				if (!FUNC9(scan, &buf, dir))
					end_of_scan = true;
			}
			else
				end_of_scan = true;
		}
	}
	else
	{
		if (--so->currPos.itemIndex < so->currPos.firstItem)
		{
			if (so->numKilled > 0)
				FUNC8(scan);

			blkno = so->currPos.prevPage;
			if (FUNC0(blkno))
			{
				buf = FUNC7(rel, blkno, HASH_READ,
								   LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
				FUNC4(scan->xs_snapshot, rel, FUNC1(buf));

				/*
				 * We always maintain the pin on bucket page for whole scan
				 * operation, so releasing the additional pin we have acquired
				 * here.
				 */
				if (buf == so->hashso_bucket_buf ||
					buf == so->hashso_split_bucket_buf)
					FUNC5(rel, buf);

				if (!FUNC9(scan, &buf, dir))
					end_of_scan = true;
			}
			else
				end_of_scan = true;
		}
	}

	if (end_of_scan)
	{
		FUNC6(rel, so);
		FUNC2(so->currPos);
		return false;
	}

	/* OK, itemIndex says what to return */
	currItem = &so->currPos.items[so->currPos.itemIndex];
	scan->xs_heaptid = currItem->heapTid;

	return true;
}