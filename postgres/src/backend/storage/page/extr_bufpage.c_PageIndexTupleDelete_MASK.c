#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned int lp_off; } ;
struct TYPE_12__ {int pd_lower; int pd_upper; scalar_t__ pd_special; int /*<<< orphan*/ * pd_linp; } ;
typedef  unsigned int Size ;
typedef  TYPE_1__* PageHeader ;
typedef  TYPE_1__* Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  TYPE_3__* ItemId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 unsigned int FUNC1 (TYPE_3__*) ; 
 unsigned int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 TYPE_3__* FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,unsigned int) ; 

void
FUNC13(Page page, OffsetNumber offnum)
{
	PageHeader	phdr = (PageHeader) page;
	char	   *addr;
	ItemId		tup;
	Size		size;
	unsigned	offset;
	int			nbytes;
	int			offidx;
	int			nline;

	/*
	 * As with PageRepairFragmentation, paranoia seems justified.
	 */
	if (phdr->pd_lower < SizeOfPageHeaderData ||
		phdr->pd_lower > phdr->pd_upper ||
		phdr->pd_upper > phdr->pd_special ||
		phdr->pd_special > BLCKSZ ||
		phdr->pd_special != FUNC4(phdr->pd_special))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_DATA_CORRUPTED),
				 FUNC11("corrupted page pointers: lower = %u, upper = %u, special = %u",
						phdr->pd_lower, phdr->pd_upper, phdr->pd_special)));

	nline = FUNC6(page);
	if ((int) offnum <= 0 || (int) offnum > nline)
		FUNC8(ERROR, "invalid index offnum: %u", offnum);

	/* change offset number to offset index */
	offidx = offnum - 1;

	tup = FUNC5(page, offnum);
	FUNC0(FUNC3(tup));
	size = FUNC1(tup);
	offset = FUNC2(tup);

	if (offset < phdr->pd_upper || (offset + size) > phdr->pd_special ||
		offset != FUNC4(offset))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_DATA_CORRUPTED),
				 FUNC11("corrupted line pointer: offset = %u, size = %u",
						offset, (unsigned int) size)));

	/* Amount of space to actually be deleted */
	size = FUNC4(size);

	/*
	 * First, we want to get rid of the pd_linp entry for the index tuple. We
	 * copy all subsequent linp's back one slot in the array. We don't use
	 * PageGetItemId, because we are manipulating the _array_, not individual
	 * linp's.
	 */
	nbytes = phdr->pd_lower -
		((char *) &phdr->pd_linp[offidx + 1] - (char *) phdr);

	if (nbytes > 0)
		FUNC12((char *) &(phdr->pd_linp[offidx]),
				(char *) &(phdr->pd_linp[offidx + 1]),
				nbytes);

	/*
	 * Now move everything between the old upper bound (beginning of tuple
	 * space) and the beginning of the deleted tuple forward, so that space in
	 * the middle of the page is left free.  If we've just deleted the tuple
	 * at the beginning of tuple space, then there's no need to do the copy.
	 */

	/* beginning of tuple space */
	addr = (char *) page + phdr->pd_upper;

	if (offset > phdr->pd_upper)
		FUNC12(addr + size, addr, offset - phdr->pd_upper);

	/* adjust free space boundary pointers */
	phdr->pd_upper += size;
	phdr->pd_lower -= sizeof(ItemIdData);

	/*
	 * Finally, we need to adjust the linp entries that remain.
	 *
	 * Anything that used to be before the deleted tuple's data was moved
	 * forward by the size of the deleted tuple.
	 */
	if (!FUNC7(page))
	{
		int			i;

		nline--;				/* there's one less than when we started */
		for (i = 1; i <= nline; i++)
		{
			ItemId		ii = FUNC5(phdr, i);

			FUNC0(FUNC3(ii));
			if (FUNC2(ii) <= offset)
				ii->lp_off += size;
		}
	}
}