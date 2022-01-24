#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_3__ {scalar_t__ blkno; int freeSpace; } ;
typedef  TYPE_1__ SpGistLastUsedPage ;
typedef  int /*<<< orphan*/  SpGistCache ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ InvalidBlockNumber ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPGIST_DEFAULT_FILLFACTOR ; 
 int /*<<< orphan*/  SPGIST_LEAF ; 
 int /*<<< orphan*/  SPGIST_NULLS ; 
 int SPGIST_PAGE_CAPACITY ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 

Buffer
FUNC22(Relation index, int flags, int needSpace, bool *isNew)
{
	SpGistCache *cache = FUNC21(index);
	SpGistLastUsedPage *lup;

	/* Bail out if even an empty page wouldn't meet the demand */
	if (needSpace > SPGIST_PAGE_CAPACITY)
		FUNC20(ERROR, "desired SPGiST tuple size is too big");

	/*
	 * If possible, increase the space request to include relation's
	 * fillfactor.  This ensures that when we add unrelated tuples to a page,
	 * we try to keep 100-fillfactor% available for adding tuples that are
	 * related to the ones already on it.  But fillfactor mustn't cause an
	 * error for requests that would otherwise be legal.
	 */
	needSpace += FUNC11(index,
												SPGIST_DEFAULT_FILLFACTOR);
	needSpace = FUNC6(needSpace, SPGIST_PAGE_CAPACITY);

	/* Get the cache entry for this flags setting */
	lup = FUNC5(cache, flags);

	/* If we have nothing cached, just turn it over to allocNewBuffer */
	if (lup->blkno == InvalidBlockNumber)
	{
		*isNew = true;
		return FUNC19(index, flags);
	}

	/* fixed pages should never be in cache */
	FUNC0(!FUNC13(lup->blkno));

	/* If cached freeSpace isn't enough, don't bother looking at the page */
	if (lup->freeSpace >= needSpace)
	{
		Buffer		buffer;
		Page		page;

		buffer = FUNC10(index, lup->blkno);

		if (!FUNC2(buffer))
		{
			/*
			 * buffer is locked by another process, so return a new buffer
			 */
			FUNC12(buffer);
			*isNew = true;
			return FUNC19(index, flags);
		}

		page = FUNC1(buffer);

		if (FUNC9(page) || FUNC15(page) || FUNC8(page))
		{
			/* OK to initialize the page */
			uint16		pageflags = 0;

			if (FUNC3(flags))
				pageflags |= SPGIST_LEAF;
			if (FUNC4(flags))
				pageflags |= SPGIST_NULLS;
			FUNC14(buffer, pageflags);
			lup->freeSpace = FUNC7(page) - needSpace;
			*isNew = true;
			return buffer;
		}

		/*
		 * Check that page is of right type and has enough space.  We must
		 * recheck this since our cache isn't necessarily up to date.
		 */
		if ((FUNC3(flags) ? FUNC16(page) : !FUNC16(page)) &&
			(FUNC4(flags) ? FUNC17(page) : !FUNC17(page)))
		{
			int			freeSpace = FUNC7(page);

			if (freeSpace >= needSpace)
			{
				/* Success, update freespace info and return the buffer */
				lup->freeSpace = freeSpace - needSpace;
				*isNew = false;
				return buffer;
			}
		}

		/*
		 * fallback to allocation of new buffer
		 */
		FUNC18(buffer);
	}

	/* No success with cache, so return a new buffer */
	*isNew = true;
	return FUNC19(index, flags);
}