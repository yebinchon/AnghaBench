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
struct TYPE_7__ {int /*<<< orphan*/  ffactor; int /*<<< orphan*/  procid; int /*<<< orphan*/  num_tuples; } ;
typedef  TYPE_1__ xl_hash_init_meta_page ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INIT_FORKNUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Page		page;
	Buffer		metabuf;
	ForkNumber	forknum;

	xl_hash_init_meta_page *xlrec = (xl_hash_init_meta_page *) FUNC9(record);

	/* create the index' metapage */
	metabuf = FUNC7(record, 0);
	FUNC0(FUNC2(metabuf));
	FUNC10(metabuf, xlrec->num_tuples, xlrec->procid,
						  xlrec->ffactor, true);
	page = (Page) FUNC1(metabuf);
	FUNC5(page, lsn);
	FUNC4(metabuf);

	/*
	 * Force the on-disk state of init forks to always be in sync with the
	 * state in shared buffers.  See XLogReadBufferForRedoExtended.  We need
	 * special handling for init forks as create index operations don't log a
	 * full page image of the metapage.
	 */
	FUNC8(record, 0, NULL, &forknum, NULL);
	if (forknum == INIT_FORKNUM)
		FUNC3(metabuf);

	/* all done */
	FUNC6(metabuf);
}