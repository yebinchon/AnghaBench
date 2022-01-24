#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_12__ {int /*<<< orphan*/  btpo_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/ * btps_page; int /*<<< orphan*/  btps_blkno; int /*<<< orphan*/ * btps_lowkey; struct TYPE_11__* btps_next; int /*<<< orphan*/  btps_level; } ;
struct TYPE_10__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/ * Page ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_1__ BTWriteState ;
typedef  TYPE_2__ BTPageState ;
typedef  TYPE_3__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  BTP_ROOT ; 
 int /*<<< orphan*/  BTREE_METAPAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  P_NONE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(BTWriteState *wstate, BTPageState *state)
{
	BTPageState *s;
	BlockNumber rootblkno = P_NONE;
	uint32		rootlevel = 0;
	Page		metapage;

	/*
	 * Each iteration of this loop completes one more level of the tree.
	 */
	for (s = state; s != NULL; s = s->btps_next)
	{
		BlockNumber blkno;
		BTPageOpaque opaque;

		blkno = s->btps_blkno;
		opaque = (BTPageOpaque) FUNC5(s->btps_page);

		/*
		 * We have to link the last page on this level to somewhere.
		 *
		 * If we're at the top, it's the root, so attach it to the metapage.
		 * Otherwise, add an entry for it to its parent using its low key.
		 * This may cause the last page of the parent level to split, but
		 * that's not a problem -- we haven't gotten to it yet.
		 */
		if (s->btps_next == NULL)
		{
			opaque->btpo_flags |= BTP_ROOT;
			rootblkno = blkno;
			rootlevel = s->btps_level;
		}
		else
		{
			FUNC0((FUNC2(s->btps_lowkey, wstate->index) <=
					FUNC3(wstate->index) &&
					FUNC2(s->btps_lowkey, wstate->index) > 0) ||
				   FUNC4(opaque));
			FUNC0(FUNC2(s->btps_lowkey, wstate->index) == 0 ||
				   !FUNC4(opaque));
			FUNC1(s->btps_lowkey, blkno);
			FUNC7(wstate, s->btps_next, s->btps_lowkey);
			FUNC11(s->btps_lowkey);
			s->btps_lowkey = NULL;
		}

		/*
		 * This is the rightmost page, so the ItemId array needs to be slid
		 * back one slot.  Then we can dump out the page.
		 */
		FUNC9(s->btps_page);
		FUNC6(wstate, s->btps_page, s->btps_blkno);
		s->btps_page = NULL;	/* writepage freed the workspace */
	}

	/*
	 * As the last step in the process, construct the metapage and make it
	 * point to the new root (unless we had no data at all, in which case it's
	 * set to point to "P_NONE").  This changes the index to the "valid" state
	 * by filling in a valid magic number in the metapage.
	 */
	metapage = (Page) FUNC10(BLCKSZ);
	FUNC8(metapage, rootblkno, rootlevel);
	FUNC6(wstate, metapage, BTREE_METAPAGE);
}