#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16 ;
struct TYPE_15__ {void* hasho_nextblkno; void* hasho_prevblkno; } ;
struct TYPE_12__ {scalar_t__ buf; scalar_t__ firstItem; scalar_t__ lastItem; void* nextPage; void* prevPage; scalar_t__ itemIndex; void* currPage; } ;
struct TYPE_14__ {scalar_t__ numKilled; scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; TYPE_1__ currPos; int /*<<< orphan*/  hashso_sk_hash; } ;
struct TYPE_13__ {int /*<<< orphan*/  opaque; int /*<<< orphan*/  indexRelation; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  TYPE_3__* HashScanOpaque ;
typedef  TYPE_4__* HashPageOpaque ;
typedef  void* Buffer ;
typedef  void* BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 void* InvalidBlockNumber ; 
 scalar_t__ InvalidBuffer ; 
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,void**,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,void**,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC15(IndexScanDesc scan, Buffer *bufP, ScanDirection dir)
{
	Relation	rel = scan->indexRelation;
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	Buffer		buf;
	Page		page;
	HashPageOpaque opaque;
	OffsetNumber offnum;
	uint16		itemIndex;

	buf = *bufP;
	FUNC0(FUNC3(buf));
	FUNC9(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
	page = FUNC2(buf);
	opaque = (HashPageOpaque) FUNC5(page);

	so->currPos.buf = buf;
	so->currPos.currPage = FUNC1(buf);

	if (FUNC6(dir))
	{
		BlockNumber prev_blkno = InvalidBlockNumber;

		for (;;)
		{
			/* new page, locate starting position by binary search */
			offnum = FUNC7(page, so->hashso_sk_hash);

			itemIndex = FUNC11(scan, page, offnum, dir);

			if (itemIndex != 0)
				break;

			/*
			 * Could not find any matching tuples in the current page, move to
			 * the next page. Before leaving the current page, deal with any
			 * killed items.
			 */
			if (so->numKilled > 0)
				FUNC10(scan);

			/*
			 * If this is a primary bucket page, hasho_prevblkno is not a real
			 * block number.
			 */
			if (so->currPos.buf == so->hashso_bucket_buf ||
				so->currPos.buf == so->hashso_split_bucket_buf)
				prev_blkno = InvalidBlockNumber;
			else
				prev_blkno = opaque->hasho_prevblkno;

			FUNC12(scan, &buf, &page, &opaque);
			if (FUNC3(buf))
			{
				so->currPos.buf = buf;
				so->currPos.currPage = FUNC1(buf);
			}
			else
			{
				/*
				 * Remember next and previous block numbers for scrollable
				 * cursors to know the start position and return false
				 * indicating that no more matching tuples were found. Also,
				 * don't reset currPage or lsn, because we expect
				 * _hash_kill_items to be called for the old page after this
				 * function returns.
				 */
				so->currPos.prevPage = prev_blkno;
				so->currPos.nextPage = InvalidBlockNumber;
				so->currPos.buf = buf;
				return false;
			}
		}

		so->currPos.firstItem = 0;
		so->currPos.lastItem = itemIndex - 1;
		so->currPos.itemIndex = 0;
	}
	else
	{
		BlockNumber next_blkno = InvalidBlockNumber;

		for (;;)
		{
			/* new page, locate starting position by binary search */
			offnum = FUNC8(page, so->hashso_sk_hash);

			itemIndex = FUNC11(scan, page, offnum, dir);

			if (itemIndex != MaxIndexTuplesPerPage)
				break;

			/*
			 * Could not find any matching tuples in the current page, move to
			 * the previous page. Before leaving the current page, deal with
			 * any killed items.
			 */
			if (so->numKilled > 0)
				FUNC10(scan);

			if (so->currPos.buf == so->hashso_bucket_buf ||
				so->currPos.buf == so->hashso_split_bucket_buf)
				next_blkno = opaque->hasho_nextblkno;

			FUNC13(scan, &buf, &page, &opaque);
			if (FUNC3(buf))
			{
				so->currPos.buf = buf;
				so->currPos.currPage = FUNC1(buf);
			}
			else
			{
				/*
				 * Remember next and previous block numbers for scrollable
				 * cursors to know the start position and return false
				 * indicating that no more matching tuples were found. Also,
				 * don't reset currPage or lsn, because we expect
				 * _hash_kill_items to be called for the old page after this
				 * function returns.
				 */
				so->currPos.prevPage = InvalidBlockNumber;
				so->currPos.nextPage = next_blkno;
				so->currPos.buf = buf;
				return false;
			}
		}

		so->currPos.firstItem = itemIndex;
		so->currPos.lastItem = MaxIndexTuplesPerPage - 1;
		so->currPos.itemIndex = MaxIndexTuplesPerPage - 1;
	}

	if (so->currPos.buf == so->hashso_bucket_buf ||
		so->currPos.buf == so->hashso_split_bucket_buf)
	{
		so->currPos.prevPage = InvalidBlockNumber;
		so->currPos.nextPage = opaque->hasho_nextblkno;
		FUNC4(so->currPos.buf, BUFFER_LOCK_UNLOCK);
	}
	else
	{
		so->currPos.prevPage = opaque->hasho_prevblkno;
		so->currPos.nextPage = opaque->hasho_nextblkno;
		FUNC14(rel, so->currPos.buf);
		so->currPos.buf = InvalidBuffer;
	}

	FUNC0(so->currPos.firstItem <= so->currPos.lastItem);
	return true;
}