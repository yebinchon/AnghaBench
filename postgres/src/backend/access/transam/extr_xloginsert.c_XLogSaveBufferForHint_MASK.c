#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_6__ {int /*<<< orphan*/  delayChkpt; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int pd_lower; int pd_upper; } ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  TYPE_2__ PGAlignedBlock ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BLCKSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ InvalidXLogRecPtr ; 
 TYPE_3__* MyPgXact ; 
 int REGBUF_FORCE_IMAGE ; 
 int REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int /*<<< orphan*/  XLOG_FPI_FOR_HINT ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

XLogRecPtr
FUNC10(Buffer buffer, bool buffer_std)
{
	XLogRecPtr	recptr = InvalidXLogRecPtr;
	XLogRecPtr	lsn;
	XLogRecPtr	RedoRecPtr;

	/*
	 * Ensure no checkpoint can change our view of RedoRecPtr.
	 */
	FUNC0(MyPgXact->delayChkpt);

	/*
	 * Update RedoRecPtr so that we can make the right decision
	 */
	RedoRecPtr = FUNC5();

	/*
	 * We assume page LSN is first data on *every* page that can be passed to
	 * XLogInsert, whether it has the standard page layout or not. Since we're
	 * only holding a share-lock on the page, we must take the buffer header
	 * lock when we look at the LSN.
	 */
	lsn = FUNC2(buffer);

	if (lsn <= RedoRecPtr)
	{
		int			flags;
		PGAlignedBlock copied_buffer;
		char	   *origdata = (char *) FUNC1(buffer);
		RelFileNode rnode;
		ForkNumber	forkno;
		BlockNumber blkno;

		/*
		 * Copy buffer so we don't have to worry about concurrent hint bit or
		 * lsn updates. We assume pd_lower/upper cannot be changed without an
		 * exclusive lock, so the contents bkp are not racy.
		 */
		if (buffer_std)
		{
			/* Assume we can omit data between pd_lower and pd_upper */
			Page		page = FUNC3(buffer);
			uint16		lower = ((PageHeader) page)->pd_lower;
			uint16		upper = ((PageHeader) page)->pd_upper;

			FUNC9(copied_buffer.data, origdata, lower);
			FUNC9(copied_buffer.data + upper, origdata + upper, BLCKSZ - upper);
		}
		else
			FUNC9(copied_buffer.data, origdata, BLCKSZ);

		FUNC6();

		flags = REGBUF_FORCE_IMAGE;
		if (buffer_std)
			flags |= REGBUF_STANDARD;

		FUNC4(buffer, &rnode, &forkno, &blkno);
		FUNC8(0, &rnode, forkno, blkno, copied_buffer.data, flags);

		recptr = FUNC7(RM_XLOG_ID, XLOG_FPI_FOR_HINT);
	}

	return recptr;
}