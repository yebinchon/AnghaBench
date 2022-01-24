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
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  index; } ;
struct TYPE_14__ {scalar_t__ entry; } ;
struct TYPE_13__ {scalar_t__ off; } ;
struct TYPE_12__ {char* data; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ PGAlignedBlock ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_2__ GinBtreeStack ;
typedef  TYPE_3__ GinBtreeEntryInsertData ;
typedef  TYPE_4__* GinBtree ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_10__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC15(GinBtree btree, Buffer origbuf,
			   GinBtreeStack *stack,
			   GinBtreeEntryInsertData *insertData,
			   BlockNumber updateblkno,
			   Page *newlpage, Page *newrpage)
{
	OffsetNumber off = stack->off;
	OffsetNumber i,
				maxoff,
				separator = InvalidOffsetNumber;
	Size		totalsize = 0;
	Size		lsize = 0,
				size;
	char	   *ptr;
	IndexTuple	itup;
	Page		page;
	Page		lpage = FUNC10(FUNC0(origbuf));
	Page		rpage = FUNC10(FUNC0(origbuf));
	Size		pageSize = FUNC9(lpage);
	PGAlignedBlock tupstore[2]; /* could need 2 pages' worth of tuples */

	FUNC13(btree, lpage, off, insertData, updateblkno);

	/*
	 * First, append all the existing tuples and the new tuple we're inserting
	 * one after another in a temporary workspace.
	 */
	maxoff = FUNC8(lpage);
	ptr = tupstore[0].data;
	for (i = FirstOffsetNumber; i <= maxoff; i++)
	{
		if (i == off)
		{
			size = FUNC4(FUNC3(insertData->entry));
			FUNC14(ptr, insertData->entry, size);
			ptr += size;
			totalsize += size + sizeof(ItemIdData);
		}

		itup = (IndexTuple) FUNC6(lpage, FUNC7(lpage, i));
		size = FUNC4(FUNC3(itup));
		FUNC14(ptr, itup, size);
		ptr += size;
		totalsize += size + sizeof(ItemIdData);
	}

	if (off == maxoff + 1)
	{
		size = FUNC4(FUNC3(insertData->entry));
		FUNC14(ptr, insertData->entry, size);
		ptr += size;
		totalsize += size + sizeof(ItemIdData);
	}

	/*
	 * Initialize the left and right pages, and copy all the tuples back to
	 * them.
	 */
	FUNC1(rpage, FUNC2(lpage)->flags, pageSize);
	FUNC1(lpage, FUNC2(rpage)->flags, pageSize);

	ptr = tupstore[0].data;
	maxoff++;
	lsize = 0;

	page = lpage;
	for (i = FirstOffsetNumber; i <= maxoff; i++)
	{
		itup = (IndexTuple) ptr;

		/*
		 * Decide where to split.  We try to equalize the pages' total data
		 * size, not number of tuples.
		 */
		if (lsize > totalsize / 2)
		{
			if (separator == InvalidOffsetNumber)
				separator = i - 1;
			page = rpage;
		}
		else
		{
			lsize += FUNC4(FUNC3(itup)) + sizeof(ItemIdData);
		}

		if (FUNC5(page, (Item) itup, FUNC3(itup), InvalidOffsetNumber, false, false) == InvalidOffsetNumber)
			FUNC12(ERROR, "failed to add item to index page in \"%s\"",
				 FUNC11(btree->index));
		ptr += FUNC4(FUNC3(itup));
	}

	/* return temp pages to caller */
	*newlpage = lpage;
	*newrpage = rpage;
}