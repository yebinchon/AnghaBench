#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rightlink; } ;
struct TYPE_7__ {scalar_t__ downlinkoffnum; scalar_t__ lsn; scalar_t__ blkno; void* buffer; struct TYPE_7__* parent; void* page; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__ GISTInsertStack ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 TYPE_5__* FUNC1 (void*) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC14(Relation r, GISTInsertStack *child)
{
	GISTInsertStack *parent = child->parent;

	FUNC13(r, parent->buffer);
	parent->page = (Page) FUNC0(parent->buffer);

	/* here we don't need to distinguish between split and page update */
	if (child->downlinkoffnum == InvalidOffsetNumber ||
		parent->lsn != FUNC7(parent->page))
	{
		/* parent is changed, look child in right links until found */
		OffsetNumber i,
					maxoff;
		ItemId		iid;
		IndexTuple	idxtuple;
		GISTInsertStack *ptr;

		while (true)
		{
			maxoff = FUNC8(parent->page);
			for (i = FirstOffsetNumber; i <= maxoff; i = FUNC4(i))
			{
				iid = FUNC6(parent->page, i);
				idxtuple = (IndexTuple) FUNC5(parent->page, iid);
				if (FUNC2(&(idxtuple->t_tid)) == child->blkno)
				{
					/* yes!!, found */
					child->downlinkoffnum = i;
					return;
				}
			}

			parent->blkno = FUNC1(parent->page)->rightlink;
			FUNC11(parent->buffer);
			if (parent->blkno == InvalidBlockNumber)
			{
				/*
				 * End of chain and still didn't find parent. It's a very-very
				 * rare situation when root splitted.
				 */
				break;
			}
			parent->buffer = FUNC9(r, parent->blkno);
			FUNC3(parent->buffer, GIST_EXCLUSIVE);
			FUNC13(r, parent->buffer);
			parent->page = (Page) FUNC0(parent->buffer);
		}

		/*
		 * awful!!, we need search tree to find parent ... , but before we
		 * should release all old parent
		 */

		ptr = child->parent->parent;	/* child->parent already released
										 * above */
		while (ptr)
		{
			FUNC10(ptr->buffer);
			ptr = ptr->parent;
		}

		/* ok, find new path */
		ptr = parent = FUNC12(r, child->blkno, &child->downlinkoffnum);

		/* read all buffers as expected by caller */
		/* note we don't lock them or gistcheckpage them here! */
		while (ptr)
		{
			ptr->buffer = FUNC9(r, ptr->blkno);
			ptr->page = (Page) FUNC0(ptr->buffer);
			ptr = ptr->parent;
		}

		/* install new chain of parents to stack */
		child->parent = parent;

		/* make recursive call to normal processing */
		FUNC3(child->parent->buffer, GIST_EXCLUSIVE);
		FUNC14(r, child);
	}

	return;
}