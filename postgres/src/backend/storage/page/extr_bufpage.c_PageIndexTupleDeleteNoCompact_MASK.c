#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int lp_off; } ;
struct TYPE_13__ {scalar_t__ pd_lower; scalar_t__ pd_upper; scalar_t__ pd_special; } ;
typedef  unsigned int Size ;
typedef  TYPE_1__* PageHeader ;
typedef  TYPE_1__* Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  TYPE_3__* ItemId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 unsigned int FUNC1 (TYPE_3__*) ; 
 unsigned int FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 unsigned int FUNC5 (unsigned int) ; 
 TYPE_3__* FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,unsigned int) ; 

void
FUNC14(Page page, OffsetNumber offnum)
{
	PageHeader	phdr = (PageHeader) page;
	char	   *addr;
	ItemId		tup;
	Size		size;
	unsigned	offset;
	int			nline;

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

	nline = FUNC7(page);
	if ((int) offnum <= 0 || (int) offnum > nline)
		FUNC9(ERROR, "invalid index offnum: %u", offnum);

	tup = FUNC6(page, offnum);
	FUNC0(FUNC3(tup));
	size = FUNC1(tup);
	offset = FUNC2(tup);

	if (offset < phdr->pd_upper || (offset + size) > phdr->pd_special ||
		offset != FUNC5(offset))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_DATA_CORRUPTED),
				 FUNC12("corrupted line pointer: offset = %u, size = %u",
						offset, (unsigned int) size)));

	/* Amount of space to actually be deleted */
	size = FUNC5(size);

	/*
	 * Either set the line pointer to "unused", or zap it if it's the last
	 * one.  (Note: it's possible that the next-to-last one(s) are already
	 * unused, but we do not trouble to try to compact them out if so.)
	 */
	if ((int) offnum < nline)
		FUNC4(tup);
	else
	{
		phdr->pd_lower -= sizeof(ItemIdData);
		nline--;				/* there's one less than when we started */
	}

	/*
	 * Now move everything between the old upper bound (beginning of tuple
	 * space) and the beginning of the deleted tuple forward, so that space in
	 * the middle of the page is left free.  If we've just deleted the tuple
	 * at the beginning of tuple space, then there's no need to do the copy.
	 */

	/* beginning of tuple space */
	addr = (char *) page + phdr->pd_upper;

	if (offset > phdr->pd_upper)
		FUNC13(addr + size, addr, offset - phdr->pd_upper);

	/* adjust free space boundary pointer */
	phdr->pd_upper += size;

	/*
	 * Finally, we need to adjust the linp entries that remain.
	 *
	 * Anything that used to be before the deleted tuple's data was moved
	 * forward by the size of the deleted tuple.
	 */
	if (!FUNC8(page))
	{
		int			i;

		for (i = 1; i <= nline; i++)
		{
			ItemId		ii = FUNC6(phdr, i);

			if (FUNC3(ii) && FUNC2(ii) <= offset)
				ii->lp_off += size;
		}
	}
}