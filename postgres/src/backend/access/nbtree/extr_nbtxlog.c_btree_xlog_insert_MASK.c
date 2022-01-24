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
struct TYPE_9__ {int /*<<< orphan*/  offnum; } ;
typedef  TYPE_1__ xl_btree_insert ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(bool isleaf, bool ismeta, XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_btree_insert *xlrec = (xl_btree_insert *) FUNC8(record);
	Buffer		buffer;
	Page		page;

	/*
	 * Insertion to an internal page finishes an incomplete split at the child
	 * level.  Clear the incomplete-split flag in the child.  Note: during
	 * normal operation, the child and parent pages are locked at the same
	 * time, so that clearing the flag and inserting the downlink appear
	 * atomic to other backends.  We don't bother with that during replay,
	 * because readers don't care about the incomplete-split flag and there
	 * cannot be updates happening.
	 */
	if (!isleaf)
		FUNC9(record, 1);
	if (FUNC6(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		Size		datalen;
		char	   *datapos = FUNC7(record, 0, &datalen);

		page = FUNC0(buffer);

		if (FUNC3(page, (Item) datapos, datalen, xlrec->offnum,
						false, false) == InvalidOffsetNumber)
			FUNC11(PANIC, "btree_xlog_insert: failed to add item");

		FUNC4(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC5(buffer);

	/*
	 * Note: in normal operation, we'd update the metapage while still holding
	 * lock on the page we inserted into.  But during replay it's not
	 * necessary to hold that lock, since no other index updates can be
	 * happening concurrently, and readers will cope fine with following an
	 * obsolete link from the metapage.
	 */
	if (ismeta)
		FUNC10(record, 2);
}