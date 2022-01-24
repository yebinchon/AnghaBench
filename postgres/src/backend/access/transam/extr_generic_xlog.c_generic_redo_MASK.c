#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int max_block_id; int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_1__ XLogReaderState ;
struct TYPE_8__ {scalar_t__ pd_lower; scalar_t__ pd_upper; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int MAX_GENERIC_XLOG_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC11(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		buffers[MAX_GENERIC_XLOG_PAGES];
	uint8		block_id;

	/* Protect limited size of buffers[] array */
	FUNC0(record->max_block_id < MAX_GENERIC_XLOG_PAGES);

	/* Iterate over blocks */
	for (block_id = 0; block_id <= record->max_block_id; block_id++)
	{
		XLogRedoAction action;

		if (!FUNC8(record, block_id))
		{
			buffers[block_id] = InvalidBuffer;
			continue;
		}

		action = FUNC6(record, block_id, &buffers[block_id]);

		/* Apply redo to given block if needed */
		if (action == BLK_NEEDS_REDO)
		{
			Page		page;
			PageHeader	pageHeader;
			char	   *blockDelta;
			Size		blockDeltaSize;

			page = FUNC1(buffers[block_id]);
			blockDelta = FUNC7(record, block_id, &blockDeltaSize);
			FUNC9(page, blockDelta, blockDeltaSize);

			/*
			 * Since the delta contains no information about what's in the
			 * "hole" between pd_lower and pd_upper, set that to zero to
			 * ensure we produce the same page state that application of the
			 * logged action by GenericXLogFinish did.
			 */
			pageHeader = (PageHeader) page;
			FUNC10(page + pageHeader->pd_lower, 0,
				   pageHeader->pd_upper - pageHeader->pd_lower);

			FUNC4(page, lsn);
			FUNC3(buffers[block_id]);
		}
	}

	/* Changes are done: unlock and release all buffers */
	for (block_id = 0; block_id <= record->max_block_id; block_id++)
	{
		if (FUNC2(buffers[block_id]))
			FUNC5(buffers[block_id]);
	}
}