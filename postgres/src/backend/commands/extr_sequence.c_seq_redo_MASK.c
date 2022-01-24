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
typedef  int /*<<< orphan*/  xl_seq_rec ;
typedef  scalar_t__ uint8 ;
struct TYPE_8__ {int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ sequence_magic ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEQ_MAGIC ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ XLOG_SEQ_LOG ; 
 scalar_t__ XLR_INFO_MASK ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

void
FUNC16(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	uint8		info = FUNC11(record) & ~XLR_INFO_MASK;
	Buffer		buffer;
	Page		page;
	Page		localpage;
	char	   *item;
	Size		itemsz;
	xl_seq_rec *xlrec = (xl_seq_rec *) FUNC9(record);
	sequence_magic *sm;

	if (info != XLOG_SEQ_LOG)
		FUNC12(PANIC, "seq_redo: unknown op code %u", info);

	buffer = FUNC8(record, 0);
	page = (Page) FUNC0(buffer);

	/*
	 * We always reinit the page.  However, since this WAL record type is also
	 * used for updating sequences, it's possible that a hot-standby backend
	 * is examining the page concurrently; so we mustn't transiently trash the
	 * buffer.  The solution is to build the correct new page contents in
	 * local workspace and then memcpy into the buffer.  Then only bytes that
	 * are supposed to change will change, even transiently. We must palloc
	 * the local page for alignment reasons.
	 */
	localpage = (Page) FUNC14(FUNC1(buffer));

	FUNC5(localpage, FUNC1(buffer), sizeof(sequence_magic));
	sm = (sequence_magic *) FUNC4(localpage);
	sm->magic = SEQ_MAGIC;

	item = (char *) xlrec + sizeof(xl_seq_rec);
	itemsz = FUNC10(record) - sizeof(xl_seq_rec);

	if (FUNC3(localpage, (Item) item, itemsz,
					FirstOffsetNumber, false, false) == InvalidOffsetNumber)
		FUNC12(PANIC, "seq_redo: failed to add item to page");

	FUNC6(localpage, lsn);

	FUNC13(page, localpage, FUNC1(buffer));
	FUNC2(buffer);
	FUNC7(buffer);

	FUNC15(localpage);
}