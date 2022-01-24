#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ rootBlkno; int fullScan; scalar_t__ (* findChildPage ) (TYPE_2__*,TYPE_1__*) ;int /*<<< orphan*/  index; scalar_t__ (* isMoveRight ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {scalar_t__ blkno; int predictNumber; void* buffer; struct TYPE_12__* parent; int /*<<< orphan*/  off; } ;
struct TYPE_11__ {scalar_t__ rightlink; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ GinBtreeStack ;
typedef  TYPE_2__* GinBtree ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 void* FUNC11 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (void*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,TYPE_1__*) ; 

GinBtreeStack *
FUNC16(GinBtree btree, bool searchMode,
				bool rootConflictCheck, Snapshot snapshot)
{
	GinBtreeStack *stack;

	stack = (GinBtreeStack *) FUNC13(sizeof(GinBtreeStack));
	stack->blkno = btree->rootBlkno;
	stack->buffer = FUNC7(btree->index, btree->rootBlkno);
	stack->parent = NULL;
	stack->predictNumber = 1;

	if (rootConflictCheck)
		FUNC2(btree->index, NULL, stack->buffer);

	for (;;)
	{
		Page		page;
		BlockNumber child;
		int			access;

		stack->off = InvalidOffsetNumber;

		page = FUNC1(stack->buffer);
		FUNC9(snapshot, btree->index, page);

		access = FUNC12(stack->buffer, searchMode);

		/*
		 * If we're going to modify the tree, finish any incomplete splits we
		 * encounter on the way.
		 */
		if (!searchMode && FUNC4(page))
			FUNC10(btree, stack, false, NULL);

		/*
		 * ok, page is correctly locked, we should check to move right ..,
		 * root never has a right link, so small optimization
		 */
		while (btree->fullScan == false && stack->blkno != btree->rootBlkno &&
			   btree->isMoveRight(btree, page))
		{
			BlockNumber rightlink = FUNC3(page)->rightlink;

			if (rightlink == InvalidBlockNumber)
				/* rightmost page */
				break;

			stack->buffer = FUNC11(stack->buffer, btree->index, access);
			stack->blkno = rightlink;
			page = FUNC1(stack->buffer);
			FUNC9(snapshot, btree->index, page);

			if (!searchMode && FUNC4(page))
				FUNC10(btree, stack, false, NULL);
		}

		if (FUNC5(page))	/* we found, return locked page */
			return stack;

		/* now we have correct buffer, try to find child */
		child = btree->findChildPage(btree, stack);

		FUNC6(stack->buffer, GIN_UNLOCK);
		FUNC0(child != InvalidBlockNumber);
		FUNC0(stack->blkno != child);

		if (searchMode)
		{
			/* in search mode we may forget path to leaf */
			stack->blkno = child;
			stack->buffer = FUNC8(stack->buffer, btree->index, stack->blkno);
		}
		else
		{
			GinBtreeStack *ptr = (GinBtreeStack *) FUNC13(sizeof(GinBtreeStack));

			ptr->parent = stack;
			stack = ptr;
			stack->blkno = child;
			stack->buffer = FUNC7(btree->index, stack->blkno);
			stack->predictNumber = 1;
		}
	}
}