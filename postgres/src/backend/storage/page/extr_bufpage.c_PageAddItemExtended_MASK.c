#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pd_lower; int pd_upper; scalar_t__ pd_special; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  void* LocationIndex ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  scalar_t__ ItemId ;
typedef  int /*<<< orphan*/  Item ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ MaxHeapTuplesPerPage ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int PAI_IS_HEAP ; 
 int PAI_OVERWRITE ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 

OffsetNumber
FUNC17(Page page,
					Item item,
					Size size,
					OffsetNumber offsetNumber,
					int flags)
{
	PageHeader	phdr = (PageHeader) page;
	Size		alignedSize;
	int			lower;
	int			upper;
	ItemId		itemId;
	OffsetNumber limit;
	bool		needshuffle = false;

	/*
	 * Be wary about corrupted page pointers
	 */
	if (phdr->pd_lower < SizeOfPageHeaderData ||
		phdr->pd_lower > phdr->pd_upper ||
		phdr->pd_upper > phdr->pd_special ||
		phdr->pd_special > BLCKSZ)
		FUNC12(PANIC,
				(FUNC13(ERRCODE_DATA_CORRUPTED),
				 FUNC14("corrupted page pointers: lower = %u, upper = %u, special = %u",
						phdr->pd_lower, phdr->pd_upper, phdr->pd_special)));

	/*
	 * Select offsetNumber to place the new item at
	 */
	limit = FUNC5(FUNC8(page));

	/* was offsetNumber passed in? */
	if (FUNC4(offsetNumber))
	{
		/* yes, check it */
		if ((flags & PAI_OVERWRITE) != 0)
		{
			if (offsetNumber < limit)
			{
				itemId = FUNC7(phdr, offsetNumber);
				if (FUNC1(itemId) || FUNC0(itemId))
				{
					FUNC11(WARNING, "will not overwrite a used ItemId");
					return InvalidOffsetNumber;
				}
			}
		}
		else
		{
			if (offsetNumber < limit)
				needshuffle = true; /* need to move existing linp's */
		}
	}
	else
	{
		/* offsetNumber was not passed in, so find a free slot */
		/* if no free slot, we'll put it at limit (1st open slot) */
		if (FUNC9(phdr))
		{
			/*
			 * Look for "recyclable" (unused) ItemId.  We check for no storage
			 * as well, just to be paranoid --- unused items should never have
			 * storage.
			 */
			for (offsetNumber = 1; offsetNumber < limit; offsetNumber++)
			{
				itemId = FUNC7(phdr, offsetNumber);
				if (!FUNC1(itemId) && !FUNC0(itemId))
					break;
			}
			if (offsetNumber >= limit)
			{
				/* the hint is wrong, so reset it */
				FUNC6(phdr);
			}
		}
		else
		{
			/* don't bother searching if hint says there's no free slot */
			offsetNumber = limit;
		}
	}

	/* Reject placing items beyond the first unused line pointer */
	if (offsetNumber > limit)
	{
		FUNC11(WARNING, "specified item offset is too large");
		return InvalidOffsetNumber;
	}

	/* Reject placing items beyond heap boundary, if heap */
	if ((flags & PAI_IS_HEAP) != 0 && offsetNumber > MaxHeapTuplesPerPage)
	{
		FUNC11(WARNING, "can't put more than MaxHeapTuplesPerPage items in a heap page");
		return InvalidOffsetNumber;
	}

	/*
	 * Compute new lower and upper pointers for page, see if it'll fit.
	 *
	 * Note: do arithmetic as signed ints, to avoid mistakes if, say,
	 * alignedSize > pd_upper.
	 */
	if (offsetNumber == limit || needshuffle)
		lower = phdr->pd_lower + sizeof(ItemIdData);
	else
		lower = phdr->pd_lower;

	alignedSize = FUNC3(size);

	upper = (int) phdr->pd_upper - (int) alignedSize;

	if (lower > upper)
		return InvalidOffsetNumber;

	/*
	 * OK to insert the item.  First, shuffle the existing pointers if needed.
	 */
	itemId = FUNC7(phdr, offsetNumber);

	if (needshuffle)
		FUNC16(itemId + 1, itemId,
				(limit - offsetNumber) * sizeof(ItemIdData));

	/* set the line pointer */
	FUNC2(itemId, upper, size);

	/*
	 * Items normally contain no uninitialized bytes.  Core bufpage consumers
	 * conform, but this is not a necessary coding rule; a new index AM could
	 * opt to depart from it.  However, data type input functions and other
	 * C-language functions that synthesize datums should initialize all
	 * bytes; datumIsEqual() relies on this.  Testing here, along with the
	 * similar check in printtup(), helps to catch such mistakes.
	 *
	 * Values of the "name" type retrieved via index-only scans may contain
	 * uninitialized bytes; see comment in btrescan().  Valgrind will report
	 * this as an error, but it is safe to ignore.
	 */
	FUNC10(item, size);

	/* copy the item's data onto the page */
	FUNC15((char *) page + upper, item, size);

	/* adjust page header */
	phdr->pd_lower = (LocationIndex) lower;
	phdr->pd_upper = (LocationIndex) upper;

	return offsetNumber;
}