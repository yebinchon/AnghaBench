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
struct TYPE_5__ {int offsetindex; int itemoff; scalar_t__ alignedlen; } ;
typedef  TYPE_1__ itemIdSortData ;
typedef  TYPE_1__* itemIdSort ;
struct TYPE_6__ {scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_3__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ Offset ;
typedef  int /*<<< orphan*/  ItemId ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstOffsetNumber ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int MaxHeapTuplesPerPage ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,...) ; 
 scalar_t__ FUNC14 (int) ; 

void
FUNC15(Page page)
{
	Offset		pd_lower = ((PageHeader) page)->pd_lower;
	Offset		pd_upper = ((PageHeader) page)->pd_upper;
	Offset		pd_special = ((PageHeader) page)->pd_special;
	itemIdSortData itemidbase[MaxHeapTuplesPerPage];
	itemIdSort	itemidptr;
	ItemId		lp;
	int			nline,
				nstorage,
				nunused;
	int			i;
	Size		totallen;

	/*
	 * It's worth the trouble to be more paranoid here than in most places,
	 * because we are about to reshuffle data in (what is usually) a shared
	 * disk buffer.  If we aren't careful then corrupted pointers, lengths,
	 * etc could cause us to clobber adjacent disk buffers, spreading the data
	 * loss further.  So, check everything.
	 */
	if (pd_lower < SizeOfPageHeaderData ||
		pd_lower > pd_upper ||
		pd_upper > pd_special ||
		pd_special > BLCKSZ ||
		pd_special != FUNC5(pd_special))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DATA_CORRUPTED),
				 FUNC13("corrupted page pointers: lower = %u, upper = %u, special = %u",
						pd_lower, pd_upper, pd_special)));

	/*
	 * Run through the line pointer array and collect data about live items.
	 */
	nline = FUNC8(page);
	itemidptr = itemidbase;
	nunused = totallen = 0;
	for (i = FirstOffsetNumber; i <= nline; i++)
	{
		lp = FUNC7(page, i);
		if (FUNC3(lp))
		{
			if (FUNC2(lp))
			{
				itemidptr->offsetindex = i - 1;
				itemidptr->itemoff = FUNC1(lp);
				if (FUNC14(itemidptr->itemoff < (int) pd_upper ||
							 itemidptr->itemoff >= (int) pd_special))
					FUNC11(ERROR,
							(FUNC12(ERRCODE_DATA_CORRUPTED),
							 FUNC13("corrupted line pointer: %u",
									itemidptr->itemoff)));
				itemidptr->alignedlen = FUNC5(FUNC0(lp));
				totallen += itemidptr->alignedlen;
				itemidptr++;
			}
		}
		else
		{
			/* Unused entries should have lp_len = 0, but make sure */
			FUNC4(lp);
			nunused++;
		}
	}

	nstorage = itemidptr - itemidbase;
	if (nstorage == 0)
	{
		/* Page is completely empty, so just reset it quickly */
		((PageHeader) page)->pd_upper = pd_special;
	}
	else
	{
		/* Need to compact the page the hard way */
		if (totallen > (Size) (pd_special - pd_lower))
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DATA_CORRUPTED),
					 FUNC13("corrupted item lengths: total %u, available space %u",
							(unsigned int) totallen, pd_special - pd_lower)));

		FUNC10(itemidbase, nstorage, page);
	}

	/* Set hint bit for PageAddItem */
	if (nunused > 0)
		FUNC9(page);
	else
		FUNC6(page);
}