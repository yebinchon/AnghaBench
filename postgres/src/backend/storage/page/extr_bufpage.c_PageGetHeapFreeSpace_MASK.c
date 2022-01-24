#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  PageHeader ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;

/* Variables and functions */
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MaxHeapTuplesPerPage ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

Size
FUNC6(Page page)
{
	Size		space;

	space = FUNC2(page);
	if (space > 0)
	{
		OffsetNumber offnum,
					nline;

		/*
		 * Are there already MaxHeapTuplesPerPage line pointers in the page?
		 */
		nline = FUNC4(page);
		if (nline >= MaxHeapTuplesPerPage)
		{
			if (FUNC5((PageHeader) page))
			{
				/*
				 * Since this is just a hint, we must confirm that there is
				 * indeed a free line pointer
				 */
				for (offnum = FirstOffsetNumber; offnum <= nline; offnum = FUNC1(offnum))
				{
					ItemId		lp = FUNC3(page, offnum);

					if (!FUNC0(lp))
						break;
				}

				if (offnum > nline)
				{
					/*
					 * The hint is wrong, but we can't clear it here since we
					 * don't have the ability to mark the page dirty.
					 */
					space = 0;
				}
			}
			else
			{
				/*
				 * Although the hint might be wrong, PageAddItem will believe
				 * it anyway, so we must believe it too.
				 */
				space = 0;
			}
		}
	}
	return space;
}