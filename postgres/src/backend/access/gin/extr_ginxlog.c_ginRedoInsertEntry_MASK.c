#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ offset; int /*<<< orphan*/  tuple; scalar_t__ isDelete; } ;
typedef  TYPE_1__ ginxlogInsertEntry ;
struct TYPE_5__ {int /*<<< orphan*/  relNode; int /*<<< orphan*/  dbNode; int /*<<< orphan*/  spcNode; } ;
typedef  TYPE_2__ RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/ * IndexTuple ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(Buffer buffer, bool isLeaf, BlockNumber rightblkno, void *rdata)
{
	Page		page = FUNC1(buffer);
	ginxlogInsertEntry *data = (ginxlogInsertEntry *) rdata;
	OffsetNumber offset = data->offset;
	IndexTuple	itup;

	if (rightblkno != InvalidBlockNumber)
	{
		/* update link to right page after split */
		FUNC0(!FUNC3(page));
		FUNC0(offset >= FirstOffsetNumber && offset <= FUNC9(page));
		itup = (IndexTuple) FUNC7(page, FUNC8(page, offset));
		FUNC4(itup, rightblkno);
	}

	if (data->isDelete)
	{
		FUNC0(FUNC3(page));
		FUNC0(offset >= FirstOffsetNumber && offset <= FUNC9(page));
		FUNC10(page, offset);
	}

	itup = &data->tuple;

	if (FUNC6(page, (Item) itup, FUNC5(itup), offset, false, false) == InvalidOffsetNumber)
	{
		RelFileNode node;
		ForkNumber	forknum;
		BlockNumber blknum;

		FUNC2(buffer, &node, &forknum, &blknum);
		FUNC11(ERROR, "failed to add item to index page in %u/%u/%u",
			 node.spcNode, node.dbNode, node.relNode);
	}
}