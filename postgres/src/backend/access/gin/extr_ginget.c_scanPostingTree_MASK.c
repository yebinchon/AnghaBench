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
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {int predictNumberResult; int /*<<< orphan*/  matchBitmap; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* GinScanEntry ;
typedef  TYPE_2__ GinBtreeStack ;
typedef  int /*<<< orphan*/  GinBtreeData ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GIN_DELETED ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Relation index, GinScanEntry scanEntry,
				BlockNumber rootPostingTree, Snapshot snapshot)
{
	GinBtreeData btree;
	GinBtreeStack *stack;
	Buffer		buffer;
	Page		page;

	/* Descend to the leftmost leaf page */
	stack = FUNC7(&btree, index, rootPostingTree, snapshot);
	buffer = stack->buffer;

	FUNC4(buffer); /* prevent unpin in freeGinBtreeStack */

	FUNC6(stack);

	/*
	 * Loop iterates through all leaf pages of posting tree
	 */
	for (;;)
	{
		page = FUNC0(buffer);
		if ((FUNC2(page)->flags & GIN_DELETED) == 0)
		{
			int			n = FUNC1(page, scanEntry->matchBitmap);

			scanEntry->predictNumberResult += n;
		}

		if (FUNC3(page))
			break;				/* no more pages */

		buffer = FUNC8(buffer, index, GIN_SHARE);
	}

	FUNC5(buffer);
}