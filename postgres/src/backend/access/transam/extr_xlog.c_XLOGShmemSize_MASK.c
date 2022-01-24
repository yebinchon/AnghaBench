#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  XLogCtlData ;
typedef  int /*<<< orphan*/  WALInsertLockPadded ;
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_XLOGINSERT_LOCKS ; 
 int /*<<< orphan*/  PGC_POSTMASTER ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int XLOG_BLCKSZ ; 
 int XLOGbuffers ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

Size
FUNC6(void)
{
	Size		size;

	/*
	 * If the value of wal_buffers is -1, use the preferred auto-tune value.
	 * This isn't an amazingly clean place to do this, but we must wait till
	 * NBuffers has received its final value, and must do it before using the
	 * value of XLOGbuffers to do anything important.
	 */
	if (XLOGbuffers == -1)
	{
		char		buf[32];

		FUNC5(buf, sizeof(buf), "%d", FUNC2());
		FUNC1("wal_buffers", buf, PGC_POSTMASTER, PGC_S_OVERRIDE);
	}
	FUNC0(XLOGbuffers > 0);

	/* XLogCtl */
	size = sizeof(XLogCtlData);

	/* WAL insertion locks, plus alignment */
	size = FUNC3(size, FUNC4(sizeof(WALInsertLockPadded), NUM_XLOGINSERT_LOCKS + 1));
	/* xlblocks array */
	size = FUNC3(size, FUNC4(sizeof(XLogRecPtr), XLOGbuffers));
	/* extra alignment padding for XLOG I/O buffers */
	size = FUNC3(size, XLOG_BLCKSZ);
	/* and the buffers themselves */
	size = FUNC3(size, FUNC4(XLOG_BLCKSZ, XLOGbuffers));

	/*
	 * Note: we don't count ControlFileData, it comes out of the "slop factor"
	 * added by CreateSharedMemoryAndSemaphores.  This lets us use this
	 * routine again below to compute the actual allocation size.
	 */

	return size;
}