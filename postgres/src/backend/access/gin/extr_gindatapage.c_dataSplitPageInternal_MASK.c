#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int maxoff; int /*<<< orphan*/  flags; } ;
struct TYPE_13__ {scalar_t__ isBuild; } ;
struct TYPE_12__ {int off; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_2__ GinBtreeStack ;
typedef  TYPE_3__* GinBtree ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FirstOffsetNumber ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC12(GinBtree btree, Buffer origbuf,
					  GinBtreeStack *stack,
					  void *insertdata, BlockNumber updateblkno,
					  Page *newlpage, Page *newrpage)
{
	Page		oldpage = FUNC0(origbuf);
	OffsetNumber off = stack->off;
	int			nitems = FUNC6(oldpage)->maxoff;
	int			nleftitems;
	int			nrightitems;
	Size		pageSize = FUNC8(oldpage);
	ItemPointerData oldbound = *FUNC2(oldpage);
	ItemPointer bound;
	Page		lpage;
	Page		rpage;
	OffsetNumber separator;
	PostingItem allitems[(BLCKSZ / sizeof(PostingItem)) + 1];

	lpage = FUNC9(oldpage);
	rpage = FUNC9(oldpage);
	FUNC4(lpage, FUNC6(oldpage)->flags, pageSize);
	FUNC4(rpage, FUNC6(oldpage)->flags, pageSize);

	/*
	 * First construct a new list of PostingItems, which includes all the old
	 * items, and the new item.
	 */
	FUNC11(allitems, FUNC1(oldpage, FirstOffsetNumber),
		   (off - 1) * sizeof(PostingItem));

	allitems[off - 1] = *((PostingItem *) insertdata);
	FUNC11(&allitems[off], FUNC1(oldpage, off),
		   (nitems - (off - 1)) * sizeof(PostingItem));
	nitems++;

	/* Update existing downlink to point to next page */
	FUNC10(&allitems[off], updateblkno);

	/*
	 * When creating a new index, fit as many tuples as possible on the left
	 * page, on the assumption that the table is scanned from beginning to
	 * end. This packs the index as tight as possible.
	 */
	if (btree->isBuild && FUNC7(oldpage))
		separator = FUNC5(rpage) / sizeof(PostingItem);
	else
		separator = nitems / 2;
	nleftitems = separator;
	nrightitems = nitems - separator;

	FUNC11(FUNC1(lpage, FirstOffsetNumber),
		   allitems,
		   nleftitems * sizeof(PostingItem));
	FUNC6(lpage)->maxoff = nleftitems;
	FUNC11(FUNC1(rpage, FirstOffsetNumber),
		   &allitems[separator],
		   nrightitems * sizeof(PostingItem));
	FUNC6(rpage)->maxoff = nrightitems;

	/*
	 * Also set pd_lower for both pages, like GinDataPageAddPostingItem does.
	 */
	FUNC3(lpage, nleftitems * sizeof(PostingItem));
	FUNC3(rpage, nrightitems * sizeof(PostingItem));

	/* set up right bound for left page */
	bound = FUNC2(lpage);
	*bound = FUNC1(lpage, nleftitems)->key;

	/* set up right bound for right page */
	*FUNC2(rpage) = oldbound;

	/* return temp pages to caller */
	*newlpage = lpage;
	*newrpage = rpage;
}