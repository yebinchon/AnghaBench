#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int offsetindex; unsigned int itemoff; unsigned int alignedlen; } ;
typedef  TYPE_1__ itemIdSortData ;
typedef  TYPE_1__* itemIdSort ;
struct TYPE_6__ {scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; int /*<<< orphan*/  pd_linp; } ;
typedef  unsigned int Size ;
typedef  TYPE_3__* PageHeader ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  scalar_t__ Offset ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/ * ItemId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstOffsetNumber ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int MaxIndexTuplesPerPage ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC15(Page page, OffsetNumber *itemnos, int nitems)
{
	PageHeader	phdr = (PageHeader) page;
	Offset		pd_lower = phdr->pd_lower;
	Offset		pd_upper = phdr->pd_upper;
	Offset		pd_special = phdr->pd_special;
	itemIdSortData itemidbase[MaxIndexTuplesPerPage];
	ItemIdData	newitemids[MaxIndexTuplesPerPage];
	itemIdSort	itemidptr;
	ItemId		lp;
	int			nline,
				nused;
	Size		totallen;
	Size		size;
	unsigned	offset;
	int			nextitm;
	OffsetNumber offnum;

	FUNC0(nitems <= MaxIndexTuplesPerPage);

	/*
	 * If there aren't very many items to delete, then retail
	 * PageIndexTupleDelete is the best way.  Delete the items in reverse
	 * order so we don't have to think about adjusting item numbers for
	 * previous deletions.
	 *
	 * TODO: tune the magic number here
	 */
	if (nitems <= 2)
	{
		while (--nitems >= 0)
			FUNC8(page, itemnos[nitems]);
		return;
	}

	/*
	 * As with PageRepairFragmentation, paranoia seems justified.
	 */
	if (pd_lower < SizeOfPageHeaderData ||
		pd_lower > pd_upper ||
		pd_upper > pd_special ||
		pd_special > BLCKSZ ||
		pd_special != FUNC4(pd_special))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DATA_CORRUPTED),
				 FUNC13("corrupted page pointers: lower = %u, upper = %u, special = %u",
						pd_lower, pd_upper, pd_special)));

	/*
	 * Scan the line pointer array and build a list of just the ones we are
	 * going to keep.  Notice we do not modify the page yet, since we are
	 * still validity-checking.
	 */
	nline = FUNC7(page);
	itemidptr = itemidbase;
	totallen = 0;
	nused = 0;
	nextitm = 0;
	for (offnum = FirstOffsetNumber; offnum <= nline; offnum = FUNC5(offnum))
	{
		lp = FUNC6(page, offnum);
		FUNC0(FUNC3(lp));
		size = FUNC1(lp);
		offset = FUNC2(lp);
		if (offset < pd_upper ||
			(offset + size) > pd_special ||
			offset != FUNC4(offset))
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DATA_CORRUPTED),
					 FUNC13("corrupted line pointer: offset = %u, size = %u",
							offset, (unsigned int) size)));

		if (nextitm < nitems && offnum == itemnos[nextitm])
		{
			/* skip item to be deleted */
			nextitm++;
		}
		else
		{
			itemidptr->offsetindex = nused; /* where it will go */
			itemidptr->itemoff = offset;
			itemidptr->alignedlen = FUNC4(size);
			totallen += itemidptr->alignedlen;
			newitemids[nused] = *lp;
			itemidptr++;
			nused++;
		}
	}

	/* this will catch invalid or out-of-order itemnos[] */
	if (nextitm != nitems)
		FUNC10(ERROR, "incorrect index offsets supplied");

	if (totallen > (Size) (pd_special - pd_lower))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DATA_CORRUPTED),
				 FUNC13("corrupted item lengths: total %u, available space %u",
						(unsigned int) totallen, pd_special - pd_lower)));

	/*
	 * Looks good. Overwrite the line pointers with the copy, from which we've
	 * removed all the unused items.
	 */
	FUNC14(phdr->pd_linp, newitemids, nused * sizeof(ItemIdData));
	phdr->pd_lower = SizeOfPageHeaderData + nused * sizeof(ItemIdData);

	/* and compactify the tuple data */
	FUNC9(itemidbase, nused, page);
}