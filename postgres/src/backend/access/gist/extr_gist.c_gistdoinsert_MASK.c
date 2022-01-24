#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ blkno; scalar_t__ lsn; int retry_from_parent; int /*<<< orphan*/  buffer; struct TYPE_17__* parent; void* page; void* downlinkoffnum; } ;
struct TYPE_16__ {int is_build; TYPE_3__* stack; void* r; void* heapRel; int /*<<< orphan*/  freespace; } ;
struct TYPE_15__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  void* Relation ;
typedef  void* Page ;
typedef  void* OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  GISTSTATE ;
typedef  TYPE_2__ GISTInsertState ;
typedef  TYPE_3__ GISTInsertStack ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 scalar_t__ GIST_ROOT_BLKNO ; 
 int /*<<< orphan*/  GIST_SHARE ; 
 int /*<<< orphan*/  GIST_UNLOCK ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 void* InvalidOffsetNumber ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC24 (void*,void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (void*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC29 (int) ; 

void
FUNC30(Relation r, IndexTuple itup, Size freespace,
			 GISTSTATE *giststate, Relation heapRel, bool is_build)
{
	ItemId		iid;
	IndexTuple	idxtuple;
	GISTInsertStack firststack;
	GISTInsertStack *stack;
	GISTInsertState state;
	bool		xlocked = false;

	FUNC28(&state, 0, sizeof(GISTInsertState));
	state.freespace = freespace;
	state.r = r;
	state.heapRel = heapRel;
	state.is_build = is_build;

	/* Start from the root */
	firststack.blkno = GIST_ROOT_BLKNO;
	firststack.lsn = 0;
	firststack.retry_from_parent = false;
	firststack.parent = NULL;
	firststack.downlinkoffnum = InvalidOffsetNumber;
	state.stack = stack = &firststack;

	/*
	 * Walk down along the path of smallest penalty, updating the parent
	 * pointers with the key we're inserting as we go. If we crash in the
	 * middle, the tree is consistent, although the possible parent updates
	 * were a waste.
	 */
	for (;;)
	{
		/*
		 * If we split an internal page while descending the tree, we have to
		 * retry at the parent. (Normally, the LSN-NSN interlock below would
		 * also catch this and cause us to retry. But LSNs are not updated
		 * during index build.)
		 */
		while (stack->retry_from_parent)
		{
			if (xlocked)
				FUNC9(stack->buffer, GIST_UNLOCK);
			xlocked = false;
			FUNC16(stack->buffer);
			state.stack = stack = stack->parent;
		}

		if (FUNC18(stack->lsn))
			stack->buffer = FUNC13(state.r, stack->blkno);

		/*
		 * Be optimistic and grab shared lock first. Swap it for an exclusive
		 * lock later if we need to update the page.
		 */
		if (!xlocked)
		{
			FUNC9(stack->buffer, GIST_SHARE);
			FUNC23(state.r, stack->buffer);
		}

		stack->page = (Page) FUNC2(stack->buffer);
		stack->lsn = xlocked ?
			FUNC12(stack->page) : FUNC1(stack->buffer);
		FUNC0(!FUNC15(state.r) || !FUNC18(stack->lsn));

		/*
		 * If this page was split but the downlink was never inserted to the
		 * parent because the inserting backend crashed before doing that, fix
		 * that now.
		 */
		if (FUNC3(stack->page))
		{
			if (!xlocked)
			{
				FUNC9(stack->buffer, GIST_UNLOCK);
				FUNC9(stack->buffer, GIST_EXCLUSIVE);
				xlocked = true;
				/* someone might've completed the split when we unlocked */
				if (!FUNC3(stack->page))
					continue;
			}
			FUNC25(&state, giststate);

			FUNC17(stack->buffer);
			xlocked = false;
			state.stack = stack = stack->parent;
			continue;
		}

		if ((stack->blkno != GIST_ROOT_BLKNO &&
			 stack->parent->lsn < FUNC4(stack->page)) ||
			FUNC5(stack->page))
		{
			/*
			 * Concurrent split or page deletion detected. There's no
			 * guarantee that the downlink for this page is consistent with
			 * the tuple we're inserting anymore, so go back to parent and
			 * rechoose the best child.
			 */
			FUNC17(stack->buffer);
			xlocked = false;
			state.stack = stack = stack->parent;
			continue;
		}

		if (!FUNC6(stack->page))
		{
			/*
			 * This is an internal page so continue to walk down the tree.
			 * Find the child node that has the minimum insertion penalty.
			 */
			BlockNumber childblkno;
			IndexTuple	newtup;
			GISTInsertStack *item;
			OffsetNumber downlinkoffnum;

			downlinkoffnum = FUNC24(state.r, stack->page, itup, giststate);
			iid = FUNC11(stack->page, downlinkoffnum);
			idxtuple = (IndexTuple) FUNC10(stack->page, iid);
			childblkno = FUNC8(&(idxtuple->t_tid));

			/*
			 * Check that it's not a leftover invalid tuple from pre-9.1
			 */
			if (FUNC7(idxtuple))
				FUNC19(ERROR,
						(FUNC22("index \"%s\" contains an inner tuple marked as invalid",
								FUNC14(r)),
						 FUNC20("This is caused by an incomplete page split at crash recovery before upgrading to PostgreSQL 9.1."),
						 FUNC21("Please REINDEX it.")));

			/*
			 * Check that the key representing the target child node is
			 * consistent with the key we're inserting. Update it if it's not.
			 */
			newtup = FUNC26(state.r, idxtuple, itup, giststate);
			if (newtup)
			{
				/*
				 * Swap shared lock for an exclusive one. Beware, the page may
				 * change while we unlock/lock the page...
				 */
				if (!xlocked)
				{
					FUNC9(stack->buffer, GIST_UNLOCK);
					FUNC9(stack->buffer, GIST_EXCLUSIVE);
					xlocked = true;
					stack->page = (Page) FUNC2(stack->buffer);

					if (FUNC12(stack->page) != stack->lsn)
					{
						/* the page was changed while we unlocked it, retry */
						continue;
					}
				}

				/*
				 * Update the tuple.
				 *
				 * We still hold the lock after gistinserttuple(), but it
				 * might have to split the page to make the updated tuple fit.
				 * In that case the updated tuple might migrate to the other
				 * half of the split, so we have to go back to the parent and
				 * descend back to the half that's a better fit for the new
				 * tuple.
				 */
				if (FUNC27(&state, stack, giststate, newtup,
									downlinkoffnum))
				{
					/*
					 * If this was a root split, the root page continues to be
					 * the parent and the updated tuple went to one of the
					 * child pages, so we just need to retry from the root
					 * page.
					 */
					if (stack->blkno != GIST_ROOT_BLKNO)
					{
						FUNC17(stack->buffer);
						xlocked = false;
						state.stack = stack = stack->parent;
					}
					continue;
				}
			}
			FUNC9(stack->buffer, GIST_UNLOCK);
			xlocked = false;

			/* descend to the chosen child */
			item = (GISTInsertStack *) FUNC29(sizeof(GISTInsertStack));
			item->blkno = childblkno;
			item->parent = stack;
			item->downlinkoffnum = downlinkoffnum;
			state.stack = stack = item;
		}
		else
		{
			/*
			 * Leaf page. Insert the new key. We've already updated all the
			 * parents on the way down, but we might have to split the page if
			 * it doesn't fit. gistinserttuple() will take care of that.
			 */

			/*
			 * Swap shared lock for an exclusive one. Be careful, the page may
			 * change while we unlock/lock the page...
			 */
			if (!xlocked)
			{
				FUNC9(stack->buffer, GIST_UNLOCK);
				FUNC9(stack->buffer, GIST_EXCLUSIVE);
				xlocked = true;
				stack->page = (Page) FUNC2(stack->buffer);
				stack->lsn = FUNC12(stack->page);

				if (stack->blkno == GIST_ROOT_BLKNO)
				{
					/*
					 * the only page that can become inner instead of leaf is
					 * the root page, so for root we should recheck it
					 */
					if (!FUNC6(stack->page))
					{
						/*
						 * very rare situation: during unlock/lock index with
						 * number of pages = 1 was increased
						 */
						FUNC9(stack->buffer, GIST_UNLOCK);
						xlocked = false;
						continue;
					}

					/*
					 * we don't need to check root split, because checking
					 * leaf/inner is enough to recognize split for root
					 */
				}
				else if ((FUNC3(stack->page) ||
						  stack->parent->lsn < FUNC4(stack->page)) &&
						 FUNC5(stack->page))
				{
					/*
					 * The page was split or deleted while we momentarily
					 * unlocked the page. Go back to parent.
					 */
					FUNC17(stack->buffer);
					xlocked = false;
					state.stack = stack = stack->parent;
					continue;
				}
			}

			/* now state.stack->(page, buffer and blkno) points to leaf page */

			FUNC27(&state, stack, giststate, itup,
							InvalidOffsetNumber);
			FUNC9(stack->buffer, GIST_UNLOCK);

			/* Release any pins we might still hold before exiting */
			for (; stack; stack = stack->parent)
				FUNC16(stack->buffer);
			break;
		}
	}
}