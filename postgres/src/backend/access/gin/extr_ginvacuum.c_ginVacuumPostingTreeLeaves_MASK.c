#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rightlink; } ;
struct TYPE_5__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; int /*<<< orphan*/  tmpCxt; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ GinVacuumState ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC15(GinVacuumState *gvs, BlockNumber blkno)
{
	Buffer		buffer;
	Page		page;
	bool		hasVoidPage = false;
	MemoryContext oldCxt;

	/* Find leftmost leaf page of posting tree and lock it in exclusive mode */
	while (true)
	{
		PostingItem *pitem;

		buffer = FUNC12(gvs->index, MAIN_FORKNUM, blkno,
									RBM_NORMAL, gvs->strategy);
		FUNC7(buffer, GIN_SHARE);
		page = FUNC1(buffer);

		FUNC0(FUNC5(page));

		if (FUNC6(page))
		{
			FUNC7(buffer, GIN_UNLOCK);
			FUNC7(buffer, GIN_EXCLUSIVE);
			break;
		}

		FUNC0(FUNC10(page) >= FirstOffsetNumber);

		pitem = FUNC3(page, FirstOffsetNumber);
		blkno = FUNC11(pitem);
		FUNC0(blkno != InvalidBlockNumber);

		FUNC13(buffer);
	}

	/* Iterate all posting tree leaves using rightlinks and vacuum them */
	while (true)
	{
		oldCxt = FUNC9(gvs->tmpCxt);
		FUNC14(gvs->index, buffer, gvs);
		FUNC9(oldCxt);
		FUNC8(gvs->tmpCxt);

		if (FUNC2(page))
			hasVoidPage = true;

		blkno = FUNC4(page)->rightlink;

		FUNC13(buffer);

		if (blkno == InvalidBlockNumber)
			break;

		buffer = FUNC12(gvs->index, MAIN_FORKNUM, blkno,
									RBM_NORMAL, gvs->strategy);
		FUNC7(buffer, GIN_EXCLUSIVE);
		page = FUNC1(buffer);
	}

	return hasVoidPage;
}