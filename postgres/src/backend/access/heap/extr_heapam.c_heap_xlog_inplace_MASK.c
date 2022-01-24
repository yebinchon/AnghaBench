#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ offnum; } ;
typedef  TYPE_1__ xl_heap_inplace ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_10__ {int t_hoff; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC15(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_inplace *xlrec = (xl_heap_inplace *) FUNC12(record);
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	ItemId		lp = NULL;
	HeapTupleHeader htup;
	uint32		oldlen;
	Size		newlen;

	if (FUNC10(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		char	   *newtup = FUNC11(record, 0, &newlen);

		page = FUNC0(buffer);

		offnum = xlrec->offnum;
		if (FUNC7(page) >= offnum)
			lp = FUNC6(page, offnum);

		if (FUNC7(page) < offnum || !FUNC3(lp))
			FUNC13(PANIC, "invalid lp");

		htup = (HeapTupleHeader) FUNC5(page, lp);

		oldlen = FUNC2(lp) - htup->t_hoff;
		if (oldlen != newlen)
			FUNC13(PANIC, "wrong tuple length");

		FUNC14((char *) htup + htup->t_hoff, newtup, newlen);

		FUNC8(page, lsn);
		FUNC4(buffer);
	}
	if (FUNC1(buffer))
		FUNC9(buffer);
}