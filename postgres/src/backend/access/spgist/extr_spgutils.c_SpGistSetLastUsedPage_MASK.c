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
struct TYPE_3__ {scalar_t__ blkno; int freeSpace; } ;
typedef  TYPE_1__ SpGistLastUsedPage ;
typedef  int /*<<< orphan*/  SpGistCache ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int GBUF_LEAF ; 
 int GBUF_NULLS ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ InvalidBlockNumber ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(Relation index, Buffer buffer)
{
	SpGistCache *cache = FUNC8(index);
	SpGistLastUsedPage *lup;
	int			freeSpace;
	Page		page = FUNC1(buffer);
	BlockNumber blkno = FUNC0(buffer);
	int			flags;

	/* Never enter fixed pages (root pages) in cache, though */
	if (FUNC5(blkno))
		return;

	if (FUNC6(page))
		flags = GBUF_LEAF;
	else
		flags = FUNC2(blkno);
	if (FUNC7(page))
		flags |= GBUF_NULLS;

	lup = FUNC3(cache, flags);

	freeSpace = FUNC4(page);
	if (lup->blkno == InvalidBlockNumber || lup->blkno == blkno ||
		lup->freeSpace < freeSpace)
	{
		lup->blkno = blkno;
		lup->freeSpace = freeSpace;
	}
}