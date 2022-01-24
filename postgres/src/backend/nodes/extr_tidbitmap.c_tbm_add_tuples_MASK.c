#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int bitmapword ;
struct TYPE_9__ {int* words; int recheck; scalar_t__ ischunk; } ;
struct TYPE_8__ {scalar_t__ iterating; scalar_t__ nentries; scalar_t__ maxentries; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  TYPE_2__ PagetableEntry ;
typedef  int OffsetNumber ;
typedef  scalar_t__ ItemPointer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ FUNC2 (scalar_t__ const) ; 
 int FUNC3 (scalar_t__ const) ; 
 int MAX_TUPLES_PER_PAGE ; 
 scalar_t__ TBM_NOT_ITERATING ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__) ; 

void
FUNC9(TIDBitmap *tbm, const ItemPointer tids, int ntids,
			   bool recheck)
{
	BlockNumber currblk = InvalidBlockNumber;
	PagetableEntry *page = NULL;	/* only valid when currblk is valid */
	int			i;

	FUNC0(tbm->iterating == TBM_NOT_ITERATING);
	for (i = 0; i < ntids; i++)
	{
		BlockNumber blk = FUNC2(tids + i);
		OffsetNumber off = FUNC3(tids + i);
		int			wordnum,
					bitnum;

		/* safety check to ensure we don't overrun bit array bounds */
		if (off < 1 || off > MAX_TUPLES_PER_PAGE)
			FUNC5(ERROR, "tuple offset out of range: %u", off);

		/*
		 * Look up target page unless we already did.  This saves cycles when
		 * the input includes consecutive tuples on the same page, which is
		 * common enough to justify an extra test here.
		 */
		if (blk != currblk)
		{
			if (FUNC8(tbm, blk))
				page = NULL;	/* remember page is lossy */
			else
				page = FUNC6(tbm, blk);
			currblk = blk;
		}

		if (page == NULL)
			continue;			/* whole page is already marked */

		if (page->ischunk)
		{
			/* The page is a lossy chunk header, set bit for itself */
			wordnum = bitnum = 0;
		}
		else
		{
			/* Page is exact, so set bit for individual tuple */
			wordnum = FUNC4(off - 1);
			bitnum = FUNC1(off - 1);
		}
		page->words[wordnum] |= ((bitmapword) 1 << bitnum);
		page->recheck |= recheck;

		if (tbm->nentries > tbm->maxentries)
		{
			FUNC7(tbm);
			/* Page could have been converted to lossy, so force new lookup */
			currblk = InvalidBlockNumber;
		}
	}
}