#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  new_bucket_flag; int /*<<< orphan*/  old_bucket_flag; } ;
typedef  TYPE_1__ xl_hash_split_complete ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int /*<<< orphan*/  hasho_flag; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__* HashPageOpaque ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ BLK_RESTORED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_hash_split_complete *xlrec = (xl_hash_split_complete *) FUNC7(record);
	Buffer		oldbuf;
	Buffer		newbuf;
	XLogRedoAction action;

	/* replay the record for old bucket */
	action = FUNC6(record, 0, &oldbuf);

	/*
	 * Note that we still update the page even if it was restored from a full
	 * page image, because the bucket flag is not included in the image.
	 */
	if (action == BLK_NEEDS_REDO || action == BLK_RESTORED)
	{
		Page		oldpage;
		HashPageOpaque oldopaque;

		oldpage = FUNC0(oldbuf);
		oldopaque = (HashPageOpaque) FUNC3(oldpage);

		oldopaque->hasho_flag = xlrec->old_bucket_flag;

		FUNC4(oldpage, lsn);
		FUNC2(oldbuf);
	}
	if (FUNC1(oldbuf))
		FUNC5(oldbuf);

	/* replay the record for new bucket */
	action = FUNC6(record, 1, &newbuf);

	/*
	 * Note that we still update the page even if it was restored from a full
	 * page image, because the bucket flag is not included in the image.
	 */
	if (action == BLK_NEEDS_REDO || action == BLK_RESTORED)
	{
		Page		newpage;
		HashPageOpaque nopaque;

		newpage = FUNC0(newbuf);
		nopaque = (HashPageOpaque) FUNC3(newpage);

		nopaque->hasho_flag = xlrec->new_bucket_flag;

		FUNC4(newpage, lsn);
		FUNC2(newbuf);
	}
	if (FUNC1(newbuf))
		FUNC5(newbuf);
}