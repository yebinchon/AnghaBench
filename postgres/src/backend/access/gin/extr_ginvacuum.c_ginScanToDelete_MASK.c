#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ maxoff; } ;
struct TYPE_8__ {scalar_t__ leftBlkno; int /*<<< orphan*/  isRoot; struct TYPE_8__* parent; void* blkno; struct TYPE_8__* child; } ;
struct TYPE_7__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_1__ GinVacuumState ;
typedef  TYPE_2__ DataPageDeleteStack ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  void* BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,void*,scalar_t__,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static bool
FUNC14(GinVacuumState *gvs, BlockNumber blkno, bool isRoot,
				DataPageDeleteStack *parent, OffsetNumber myoff)
{
	DataPageDeleteStack *me;
	Buffer		buffer;
	Page		page;
	bool		meDelete = false;
	bool		isempty;

	if (isRoot)
	{
		me = parent;
	}
	else
	{
		if (!parent->child)
		{
			me = (DataPageDeleteStack *) FUNC13(sizeof(DataPageDeleteStack));
			me->parent = parent;
			parent->child = me;
			me->leftBlkno = InvalidBlockNumber;
		}
		else
			me = parent->child;
	}

	buffer = FUNC10(gvs->index, MAIN_FORKNUM, blkno,
								RBM_NORMAL, gvs->strategy);

	if (!isRoot)
		FUNC8(buffer, GIN_EXCLUSIVE);

	page = FUNC1(buffer);

	FUNC0(FUNC5(page));

	if (!FUNC6(page))
	{
		OffsetNumber i;

		me->blkno = blkno;
		for (i = FirstOffsetNumber; i <= FUNC4(page)->maxoff; i++)
		{
			PostingItem *pitem = FUNC3(page, i);

			if (FUNC14(gvs, FUNC9(pitem), false, me, i))
				i--;
		}
	}

	if (FUNC6(page))
		isempty = FUNC2(page);
	else
		isempty = FUNC4(page)->maxoff < FirstOffsetNumber;

	if (isempty)
	{
		/* we never delete the left- or rightmost branch */
		if (me->leftBlkno != InvalidBlockNumber && !FUNC7(page))
		{
			FUNC0(!isRoot);
			FUNC12(gvs, blkno, me->leftBlkno, me->parent->blkno, myoff, me->parent->isRoot);
			meDelete = true;
		}
	}

	if (!isRoot)
		FUNC8(buffer, GIN_UNLOCK);

	FUNC11(buffer);

	if (!meDelete)
		me->leftBlkno = blkno;

	return meDelete;
}