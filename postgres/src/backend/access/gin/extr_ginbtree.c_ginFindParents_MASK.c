#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ rightlink; } ;
struct TYPE_11__ {scalar_t__ rootBlkno; scalar_t__ (* getLeftMostChild ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  index; void* (* findChildPtr ) (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,void*) ;} ;
struct TYPE_10__ {scalar_t__ blkno; struct TYPE_10__* parent; void* off; void* buffer; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  void* OffsetNumber ;
typedef  TYPE_1__ GinBtreeStack ;
typedef  TYPE_2__* GinBtree ;
typedef  void* Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 void* InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 void* FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,void*) ; 

__attribute__((used)) static void
FUNC16(GinBtree btree, GinBtreeStack *stack)
{
	Page		page;
	Buffer		buffer;
	BlockNumber blkno,
				leftmostBlkno;
	OffsetNumber offset;
	GinBtreeStack *root;
	GinBtreeStack *ptr;

	/*
	 * Unwind the stack all the way up to the root, leaving only the root
	 * item.
	 *
	 * Be careful not to release the pin on the root page! The pin on root
	 * page is required to lock out concurrent vacuums on the tree.
	 */
	root = stack->parent;
	while (root->parent)
	{
		FUNC8(root->buffer);
		root = root->parent;
	}

	FUNC0(root->blkno == btree->rootBlkno);
	FUNC0(FUNC1(root->buffer) == btree->rootBlkno);
	root->off = InvalidOffsetNumber;

	blkno = root->blkno;
	buffer = root->buffer;
	offset = InvalidOffsetNumber;

	ptr = (GinBtreeStack *) FUNC13(sizeof(GinBtreeStack));

	for (;;)
	{
		FUNC6(buffer, GIN_EXCLUSIVE);
		page = FUNC2(buffer);
		if (FUNC5(page))
			FUNC10(ERROR, "Lost path");

		if (FUNC4(page))
		{
			FUNC0(blkno != btree->rootBlkno);
			ptr->blkno = blkno;
			ptr->buffer = buffer;

			/*
			 * parent may be wrong, but if so, the ginFinishSplit call will
			 * recurse to call ginFindParents again to fix it.
			 */
			ptr->parent = root;
			ptr->off = InvalidOffsetNumber;

			FUNC11(btree, ptr, false, NULL);
		}

		leftmostBlkno = btree->getLeftMostChild(btree, page);

		while ((offset = btree->findChildPtr(btree, page, stack->blkno, InvalidOffsetNumber)) == InvalidOffsetNumber)
		{
			blkno = FUNC3(page)->rightlink;
			if (blkno == InvalidBlockNumber)
			{
				FUNC9(buffer);
				break;
			}
			buffer = FUNC12(buffer, btree->index, GIN_EXCLUSIVE);
			page = FUNC2(buffer);

			/* finish any incomplete splits, as above */
			if (FUNC4(page))
			{
				FUNC0(blkno != btree->rootBlkno);
				ptr->blkno = blkno;
				ptr->buffer = buffer;
				ptr->parent = root;
				ptr->off = InvalidOffsetNumber;

				FUNC11(btree, ptr, false, NULL);
			}
		}

		if (blkno != InvalidBlockNumber)
		{
			ptr->blkno = blkno;
			ptr->buffer = buffer;
			ptr->parent = root; /* it may be wrong, but in next call we will
								 * correct */
			ptr->off = offset;
			stack->parent = ptr;
			return;
		}

		/* Descend down to next level */
		blkno = leftmostBlkno;
		buffer = FUNC7(btree->index, blkno);
	}
}