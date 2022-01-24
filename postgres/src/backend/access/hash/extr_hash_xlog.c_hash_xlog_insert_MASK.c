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
struct TYPE_9__ {int /*<<< orphan*/  offnum; } ;
typedef  TYPE_1__ xl_hash_insert ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int hashm_ntuples; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_3__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 char* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC11(XLogReaderState *record)
{
	HashMetaPage metap;
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_hash_insert *xlrec = (xl_hash_insert *) FUNC9(record);
	Buffer		buffer;
	Page		page;

	if (FUNC7(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		Size		datalen;
		char	   *datapos = FUNC8(record, 0, &datalen);

		page = FUNC0(buffer);

		if (FUNC4(page, (Item) datapos, datalen, xlrec->offnum,
						false, false) == InvalidOffsetNumber)
			FUNC10(PANIC, "hash_xlog_insert: failed to add item");

		FUNC5(page, lsn);
		FUNC3(buffer);
	}
	if (FUNC1(buffer))
		FUNC6(buffer);

	if (FUNC7(record, 1, &buffer) == BLK_NEEDS_REDO)
	{
		/*
		 * Note: in normal operation, we'd update the metapage while still
		 * holding lock on the page we inserted into.  But during replay it's
		 * not necessary to hold that lock, since no other index updates can
		 * be happening concurrently.
		 */
		page = FUNC0(buffer);
		metap = FUNC2(page);
		metap->hashm_ntuples += 1;

		FUNC5(page, lsn);
		FUNC3(buffer);
	}
	if (FUNC1(buffer))
		FUNC6(buffer);
}