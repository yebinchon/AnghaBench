#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
struct TYPE_6__ {TYPE_1__* cachedPage; } ;
struct TYPE_7__ {TYPE_2__ lastUsedPages; } ;
struct TYPE_5__ {int /*<<< orphan*/  freeSpace; int /*<<< orphan*/  blkno; } ;
typedef  TYPE_3__ SpGistCache ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int GBUF_NULLS ; 
 int GBUF_PARITY_MASK ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int SPGIST_LEAF ; 
 int SPGIST_NULLS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Buffer
FUNC10(Relation index, int flags)
{
	SpGistCache *cache = FUNC9(index);
	uint16		pageflags = 0;

	if (FUNC3(flags))
		pageflags |= SPGIST_LEAF;
	if (FUNC4(flags))
		pageflags |= SPGIST_NULLS;

	for (;;)
	{
		Buffer		buffer;

		buffer = FUNC7(index);
		FUNC6(buffer, pageflags);

		if (pageflags & SPGIST_LEAF)
		{
			/* Leaf pages have no parity concerns, so just use it */
			return buffer;
		}
		else
		{
			BlockNumber blkno = FUNC0(buffer);
			int			blkFlags = FUNC2(blkno);

			if ((flags & GBUF_PARITY_MASK) == blkFlags)
			{
				/* Page has right parity, use it */
				return buffer;
			}
			else
			{
				/* Page has wrong parity, record it in cache and try again */
				if (pageflags & SPGIST_NULLS)
					blkFlags |= GBUF_NULLS;
				cache->lastUsedPages.cachedPage[blkFlags].blkno = blkno;
				cache->lastUsedPages.cachedPage[blkFlags].freeSpace =
					FUNC5(FUNC1(buffer));
				FUNC8(buffer);
			}
		}
	}
}