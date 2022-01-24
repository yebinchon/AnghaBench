#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; } ;
struct TYPE_13__ {int pivotsearch; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  int /*<<< orphan*/ * BTStack ;
typedef  TYPE_1__* BTScanInsert ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  P_HIKEY ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ) ; 

int
FUNC30(Relation rel, Buffer buf)
{
	int			ndeleted = 0;
	BlockNumber rightsib;
	bool		rightsib_empty;
	Page		page;
	BTPageOpaque opaque;

	/*
	 * "stack" is a search stack leading (approximately) to the target page.
	 * It is initially NULL, but when iterating, we keep it to avoid
	 * duplicated search effort.
	 *
	 * Also, when "stack" is not NULL, we have already checked that the
	 * current page is not the right half of an incomplete split, i.e. the
	 * left sibling does not have its INCOMPLETE_SPLIT flag set.
	 */
	BTStack		stack = NULL;

	for (;;)
	{
		page = FUNC2(buf);
		opaque = (BTPageOpaque) FUNC17(page);

		/*
		 * Internal pages are never deleted directly, only as part of deleting
		 * the whole branch all the way down to leaf level.
		 */
		if (!FUNC10(opaque))
		{
			/*
			 * Pre-9.4 page deletion only marked internal pages as half-dead,
			 * but now we only use that flag on leaf pages. The old algorithm
			 * was never supposed to leave half-dead pages in the tree, it was
			 * just a transient state, but it was nevertheless possible in
			 * error scenarios. We don't know how to deal with them here. They
			 * are harmless as far as searches are considered, but inserts
			 * into the deleted keyspace could add out-of-order downlinks in
			 * the upper levels. Log a notice, hopefully the admin will notice
			 * and reindex.
			 */
			if (FUNC9(opaque))
				FUNC26(LOG,
						(FUNC27(ERRCODE_INDEX_CORRUPTED),
						 FUNC29("index \"%s\" contains a half-dead internal page",
								FUNC18(rel)),
						 FUNC28("This can be caused by an interrupted VACUUM in version 9.3 or older, before upgrade. Please REINDEX it.")));
			FUNC23(rel, buf);
			return ndeleted;
		}

		/*
		 * We can never delete rightmost pages nor root pages.  While at it,
		 * check that page is not already deleted and is empty.
		 *
		 * To keep the algorithm simple, we also never delete an incompletely
		 * split page (they should be rare enough that this doesn't make any
		 * meaningful difference to disk usage):
		 *
		 * The INCOMPLETE_SPLIT flag on the page tells us if the page is the
		 * left half of an incomplete split, but ensuring that it's not the
		 * right half is more complicated.  For that, we have to check that
		 * the left sibling doesn't have its INCOMPLETE_SPLIT flag set.  On
		 * the first iteration, we temporarily release the lock on the current
		 * page, and check the left sibling and also construct a search stack
		 * to.  On subsequent iterations, we know we stepped right from a page
		 * that passed these tests, so it's OK.
		 */
		if (FUNC13(opaque) || FUNC11(opaque) || FUNC8(opaque) ||
			FUNC6(opaque) <= FUNC16(page) ||
			FUNC7(opaque))
		{
			/* Should never fail to delete a half-dead page */
			FUNC0(!FUNC9(opaque));

			FUNC23(rel, buf);
			return ndeleted;
		}

		/*
		 * First, remove downlink pointing to the page (or a parent of the
		 * page, if we are going to delete a taller branch), and mark the page
		 * as half-dead.
		 */
		if (!FUNC9(opaque))
		{
			/*
			 * We need an approximate pointer to the page's parent page.  We
			 * use a variant of the standard search mechanism to search for
			 * the page's high key; this will give us a link to either the
			 * current parent or someplace to its left (if there are multiple
			 * equal high keys, which is possible with !heapkeyspace indexes).
			 *
			 * Also check if this is the right-half of an incomplete split
			 * (see comment above).
			 */
			if (!stack)
			{
				BTScanInsert itup_key;
				ItemId		itemid;
				IndexTuple	targetkey;
				Buffer		lbuf;
				BlockNumber leftsib;

				itemid = FUNC15(page, P_HIKEY);
				targetkey = FUNC4((IndexTuple) FUNC14(page, itemid));

				leftsib = opaque->btpo_prev;

				/*
				 * To avoid deadlocks, we'd better drop the leaf page lock
				 * before going further.
				 */
				FUNC5(buf, BUFFER_LOCK_UNLOCK);

				/*
				 * Fetch the left sibling, to check that it's not marked with
				 * INCOMPLETE_SPLIT flag.  That would mean that the page
				 * to-be-deleted doesn't have a downlink, and the page
				 * deletion algorithm isn't prepared to handle that.
				 */
				if (!FUNC12(opaque))
				{
					BTPageOpaque lopaque;
					Page		lpage;

					lbuf = FUNC20(rel, leftsib, BT_READ);
					lpage = FUNC2(lbuf);
					lopaque = (BTPageOpaque) FUNC17(lpage);

					/*
					 * If the left sibling is split again by another backend,
					 * after we released the lock, we know that the first
					 * split must have finished, because we don't allow an
					 * incompletely-split page to be split again.  So we don't
					 * need to walk right here.
					 */
					if (lopaque->btpo_next == FUNC1(buf) &&
						FUNC7(lopaque))
					{
						FUNC19(buf);
						FUNC23(rel, lbuf);
						return ndeleted;
					}
					FUNC23(rel, lbuf);
				}

				/* we need an insertion scan key for the search, so build one */
				itup_key = FUNC22(rel, targetkey);
				/* find the leftmost leaf page with matching pivot/high key */
				itup_key->pivotsearch = true;
				stack = FUNC24(rel, itup_key, &lbuf, BT_READ, NULL);
				/* don't need a lock or second pin on the page */
				FUNC23(rel, lbuf);

				/*
				 * Re-lock the leaf page, and start over, to re-check that the
				 * page can still be deleted.
				 */
				FUNC5(buf, BT_WRITE);
				continue;
			}

			if (!FUNC21(rel, buf, stack))
			{
				FUNC23(rel, buf);
				return ndeleted;
			}
		}

		/*
		 * Then unlink it from its siblings.  Each call to
		 * _bt_unlink_halfdead_page unlinks the topmost page from the branch,
		 * making it shallower.  Iterate until the leaf page is gone.
		 */
		rightsib_empty = false;
		while (FUNC9(opaque))
		{
			/* will check for interrupts, once lock is released */
			if (!FUNC25(rel, buf, &rightsib_empty))
			{
				/* _bt_unlink_halfdead_page already released buffer */
				return ndeleted;
			}
			ndeleted++;
		}

		rightsib = opaque->btpo_next;

		FUNC23(rel, buf);

		/*
		 * Check here, as calling loops will have locks held, preventing
		 * interrupts from being processed.
		 */
		FUNC3();

		/*
		 * The page has now been deleted. If its right sibling is completely
		 * empty, it's possible that the reason we haven't deleted it earlier
		 * is that it was the rightmost child of the parent. Now that we
		 * removed the downlink for this page, the right sibling might now be
		 * the only child of the parent, and could be removed. It would be
		 * picked up by the next vacuum anyway, but might as well try to
		 * remove it now, so loop back to process the right sibling.
		 */
		if (!rightsib_empty)
			break;

		buf = FUNC20(rel, rightsib, BT_WRITE);
	}

	return ndeleted;
}