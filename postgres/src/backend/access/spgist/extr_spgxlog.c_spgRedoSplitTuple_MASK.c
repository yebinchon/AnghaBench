#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ offnumPrefix; int /*<<< orphan*/  offnumPostfix; scalar_t__ postfixBlkSame; scalar_t__ newPage; } ;
typedef  TYPE_1__ spgxlogSplitTuple ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ SpGistInnerTupleData ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 char* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,int) ; 

__attribute__((used)) static void
FUNC14(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC10(record);
	spgxlogSplitTuple *xldata = (spgxlogSplitTuple *) ptr;
	char	   *prefixTuple;
	SpGistInnerTupleData prefixTupleHdr;
	char	   *postfixTuple;
	SpGistInnerTupleData postfixTupleHdr;
	Buffer		buffer;
	Page		page;
	XLogRedoAction action;

	ptr += sizeof(spgxlogSplitTuple);
	prefixTuple = ptr;
	/* the prefix tuple is unaligned, so make a copy to access its header */
	FUNC13(&prefixTupleHdr, prefixTuple, sizeof(SpGistInnerTupleData));
	ptr += prefixTupleHdr.size;
	postfixTuple = ptr;
	/* postfix tuple is also unaligned */
	FUNC13(&postfixTupleHdr, postfixTuple, sizeof(SpGistInnerTupleData));

	/*
	 * In normal operation we would have both pages locked simultaneously; but
	 * in WAL replay it should be safe to update them one at a time, as long
	 * as we do it in the right order.
	 */

	/* insert postfix tuple first to avoid dangling link */
	if (!xldata->postfixBlkSame)
	{
		if (xldata->newPage)
		{
			buffer = FUNC8(record, 1);
			/* SplitTuple is not used for nulls pages */
			FUNC6(buffer, 0);
			action = BLK_NEEDS_REDO;
		}
		else
			action = FUNC9(record, 1, &buffer);
		if (action == BLK_NEEDS_REDO)
		{
			page = FUNC0(buffer);

			FUNC11(page, (Item) postfixTuple,
							  postfixTupleHdr.size, xldata->offnumPostfix);

			FUNC5(page, lsn);
			FUNC2(buffer);
		}
		if (FUNC1(buffer))
			FUNC7(buffer);
	}

	/* now handle the original page */
	if (FUNC9(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = FUNC0(buffer);

		FUNC4(page, xldata->offnumPrefix);
		if (FUNC3(page, (Item) prefixTuple, prefixTupleHdr.size,
						xldata->offnumPrefix, false, false) != xldata->offnumPrefix)
			FUNC12(ERROR, "failed to add item of size %u to SPGiST index page",
				 prefixTupleHdr.size);

		if (xldata->postfixBlkSame)
			FUNC11(page, (Item) postfixTuple,
							  postfixTupleHdr.size,
							  xldata->offnumPostfix);

		FUNC5(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC7(buffer);
}