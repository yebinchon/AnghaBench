#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int lp_off; } ;
struct TYPE_14__ {scalar_t__ pd_lower; scalar_t__ pd_upper; unsigned int pd_special; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__* PageHeader ;
typedef  TYPE_1__* Page ;
typedef  int OffsetNumber ;
typedef  TYPE_3__* ItemId ;
typedef  int /*<<< orphan*/  Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstOffsetNumber ; 
 int FUNC1 (TYPE_3__*) ; 
 unsigned int FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned int,scalar_t__) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

bool
FUNC15(Page page, OffsetNumber offnum,
						Item newtup, Size newsize)
{
	PageHeader	phdr = (PageHeader) page;
	ItemId		tupid;
	int			oldsize;
	unsigned	offset;
	Size		alignednewsize;
	int			size_diff;
	int			itemcount;

	/*
	 * As with PageRepairFragmentation, paranoia seems justified.
	 */
	if (phdr->pd_lower < SizeOfPageHeaderData ||
		phdr->pd_lower > phdr->pd_upper ||
		phdr->pd_upper > phdr->pd_special ||
		phdr->pd_special > BLCKSZ ||
		phdr->pd_special != FUNC5(phdr->pd_special))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_DATA_CORRUPTED),
				 FUNC12("corrupted page pointers: lower = %u, upper = %u, special = %u",
						phdr->pd_lower, phdr->pd_upper, phdr->pd_special)));

	itemcount = FUNC8(page);
	if ((int) offnum <= 0 || (int) offnum > itemcount)
		FUNC9(ERROR, "invalid index offnum: %u", offnum);

	tupid = FUNC7(page, offnum);
	FUNC0(FUNC3(tupid));
	oldsize = FUNC1(tupid);
	offset = FUNC2(tupid);

	if (offset < phdr->pd_upper || (offset + oldsize) > phdr->pd_special ||
		offset != FUNC5(offset))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_DATA_CORRUPTED),
				 FUNC12("corrupted line pointer: offset = %u, size = %u",
						offset, (unsigned int) oldsize)));

	/*
	 * Determine actual change in space requirement, check for page overflow.
	 */
	oldsize = FUNC5(oldsize);
	alignednewsize = FUNC5(newsize);
	if (alignednewsize > oldsize + (phdr->pd_upper - phdr->pd_lower))
		return false;

	/*
	 * Relocate existing data and update line pointers, unless the new tuple
	 * is the same size as the old (after alignment), in which case there's
	 * nothing to do.  Notice that what we have to relocate is data before the
	 * target tuple, not data after, so it's convenient to express size_diff
	 * as the amount by which the tuple's size is decreasing, making it the
	 * delta to add to pd_upper and affected line pointers.
	 */
	size_diff = oldsize - (int) alignednewsize;
	if (size_diff != 0)
	{
		char	   *addr = (char *) page + phdr->pd_upper;
		int			i;

		/* relocate all tuple data before the target tuple */
		FUNC14(addr + size_diff, addr, offset - phdr->pd_upper);

		/* adjust free space boundary pointer */
		phdr->pd_upper += size_diff;

		/* adjust affected line pointers too */
		for (i = FirstOffsetNumber; i <= itemcount; i++)
		{
			ItemId		ii = FUNC7(phdr, i);

			/* Allow items without storage; currently only BRIN needs that */
			if (FUNC3(ii) && FUNC2(ii) <= offset)
				ii->lp_off += size_diff;
		}
	}

	/* Update the item's tuple length (other fields shouldn't change) */
	FUNC4(tupid, offset + size_diff, newsize);

	/* Copy new tuple data onto page */
	FUNC13(FUNC6(page, tupid), newtup, newsize);

	return true;
}