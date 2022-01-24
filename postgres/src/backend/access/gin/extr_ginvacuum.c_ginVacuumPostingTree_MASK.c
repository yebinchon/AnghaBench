#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int isRoot; struct TYPE_10__* child; int /*<<< orphan*/  leftBlkno; } ;
struct TYPE_9__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ GinVacuumState ;
typedef  TYPE_2__ DataPageDeleteStack ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(GinVacuumState *gvs, BlockNumber rootBlkno)
{
	if (FUNC4(gvs, rootBlkno))
	{
		/*
		 * There is at least one empty page.  So we have to rescan the tree
		 * deleting empty pages.
		 */
		Buffer		buffer;
		DataPageDeleteStack root,
				   *ptr,
				   *tmp;

		buffer = FUNC1(gvs->index, MAIN_FORKNUM, rootBlkno,
									RBM_NORMAL, gvs->strategy);

		/*
		 * Lock posting tree root for cleanup to ensure there are no
		 * concurrent inserts.
		 */
		FUNC0(buffer);

		FUNC5(&root, 0, sizeof(DataPageDeleteStack));
		root.leftBlkno = InvalidBlockNumber;
		root.isRoot = true;

		FUNC3(gvs, rootBlkno, true, &root, InvalidOffsetNumber);

		ptr = root.child;

		while (ptr)
		{
			tmp = ptr->child;
			FUNC6(ptr);
			ptr = tmp;
		}

		FUNC2(buffer);
	}
}