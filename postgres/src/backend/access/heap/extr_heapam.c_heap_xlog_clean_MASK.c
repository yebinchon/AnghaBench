#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nredirected; int ndead; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_heap_clean ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int Size ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC15(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_clean *xlrec = (xl_heap_clean *) FUNC12(record);
	Buffer		buffer;
	RelFileNode rnode;
	BlockNumber blkno;
	XLogRedoAction action;

	FUNC11(record, 0, &rnode, NULL, &blkno);

	/*
	 * We're about to remove tuples. In Hot Standby mode, ensure that there's
	 * no queries running for which the removed tuples are still visible.
	 *
	 * Not all HEAP2_CLEAN records remove tuples with xids, so we only want to
	 * conflict on the records that cause MVCC failures for user queries. If
	 * latestRemovedXid is invalid, skip conflict processing.
	 */
	if (InHotStandby && FUNC7(xlrec->latestRemovedXid))
		FUNC6(xlrec->latestRemovedXid, rnode);

	/*
	 * If we have a full-page image, restore it (using a cleanup lock) and
	 * we're done.
	 */
	action = FUNC9(record, 0, RBM_NORMAL, true,
										   &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		Page		page = (Page) FUNC1(buffer);
		OffsetNumber *end;
		OffsetNumber *redirected;
		OffsetNumber *nowdead;
		OffsetNumber *nowunused;
		int			nredirected;
		int			ndead;
		int			nunused;
		Size		datalen;

		redirected = (OffsetNumber *) FUNC10(record, 0, &datalen);

		nredirected = xlrec->nredirected;
		ndead = xlrec->ndead;
		end = (OffsetNumber *) ((char *) redirected + datalen);
		nowdead = redirected + (nredirected * 2);
		nowunused = nowdead + ndead;
		nunused = (end - nowunused);
		FUNC0(nunused >= 0);

		/* Update all line pointers per the record, and repair fragmentation */
		FUNC14(buffer,
								redirected, nredirected,
								nowdead, ndead,
								nowunused, nunused);

		/*
		 * Note: we don't worry about updating the page's prunability hints.
		 * At worst this will cause an extra prune cycle to occur soon.
		 */

		FUNC5(page, lsn);
		FUNC3(buffer);
	}

	if (FUNC2(buffer))
	{
		Size		freespace = FUNC4(FUNC1(buffer));

		FUNC8(buffer);

		/*
		 * After cleaning records from a page, it's useful to update the FSM
		 * about it, as it may cause the page become target for insertions
		 * later even if vacuum decides not to visit it (which is possible if
		 * gets marked all-visible.)
		 *
		 * Do this regardless of a full-page image being applied, since the
		 * FSM data is not in the page anyway.
		 */
		FUNC13(rnode, blkno, freespace);
	}
}