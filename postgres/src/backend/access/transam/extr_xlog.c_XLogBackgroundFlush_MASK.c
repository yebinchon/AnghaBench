#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_5__ {int Write; int Flush; } ;
typedef  TYPE_1__ XLogwrtRqst ;
typedef  scalar_t__ TimestampTz ;
struct TYPE_7__ {int Flush; int Write; } ;
struct TYPE_6__ {int asyncXactLSN; TYPE_4__ LogwrtResult; int /*<<< orphan*/  info_lck; TYPE_1__ LogwrtRqst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__ LogwrtResult ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WALWriteLock ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  WalWriterDelay ; 
 int WalWriterFlushAfter ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int XLOG_BLCKSZ ; 
 scalar_t__ XLOG_DEBUG ; 
 TYPE_3__* XLogCtl ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ openLogFile ; 
 int /*<<< orphan*/  openLogSegNo ; 
 int /*<<< orphan*/  wal_segment_size ; 

bool
FUNC16(void)
{
	XLogwrtRqst WriteRqst;
	bool		flexible = true;
	static TimestampTz lastflush;
	TimestampTz now;
	int			flushbytes;

	/* XLOG doesn't need flushing during recovery */
	if (FUNC5())
		return false;

	/* read LogwrtResult and update local state */
	FUNC7(&XLogCtl->info_lck);
	LogwrtResult = XLogCtl->LogwrtResult;
	WriteRqst = XLogCtl->LogwrtRqst;
	FUNC8(&XLogCtl->info_lck);

	/* back off to last completed page boundary */
	WriteRqst.Write -= WriteRqst.Write % XLOG_BLCKSZ;

	/* if we have already flushed that far, consider async commit records */
	if (WriteRqst.Write <= LogwrtResult.Flush)
	{
		FUNC7(&XLogCtl->info_lck);
		WriteRqst.Write = XLogCtl->asyncXactLSN;
		FUNC8(&XLogCtl->info_lck);
		flexible = false;		/* ensure it all gets written */
	}

	/*
	 * If already known flushed, we're done. Just need to check if we are
	 * holding an open file handle to a logfile that's no longer in use,
	 * preventing the file from being deleted.
	 */
	if (WriteRqst.Write <= LogwrtResult.Flush)
	{
		if (openLogFile >= 0)
		{
			if (!FUNC12(LogwrtResult.Write, openLogSegNo,
								 wal_segment_size))
			{
				FUNC13();
			}
		}
		return false;
	}

	/*
	 * Determine how far to flush WAL, based on the wal_writer_delay and
	 * wal_writer_flush_after GUCs.
	 */
	now = FUNC2();
	flushbytes =
		WriteRqst.Write / XLOG_BLCKSZ - LogwrtResult.Flush / XLOG_BLCKSZ;

	if (WalWriterFlushAfter == 0 || lastflush == 0)
	{
		/* first call, or block based limits disabled */
		WriteRqst.Flush = WriteRqst.Write;
		lastflush = now;
	}
	else if (FUNC9(lastflush, now, WalWriterDelay))
	{
		/*
		 * Flush the writes at least every WalWriterDelay ms. This is
		 * important to bound the amount of time it takes for an asynchronous
		 * commit to hit disk.
		 */
		WriteRqst.Flush = WriteRqst.Write;
		lastflush = now;
	}
	else if (flushbytes >= WalWriterFlushAfter)
	{
		/* exceeded wal_writer_flush_after blocks, flush */
		WriteRqst.Flush = WriteRqst.Write;
		lastflush = now;
	}
	else
	{
		/* no flushing, this time round */
		WriteRqst.Flush = 0;
	}

#ifdef WAL_DEBUG
	if (XLOG_DEBUG)
		elog(LOG, "xlog bg flush request write %X/%X; flush: %X/%X, current is write %X/%X; flush %X/%X",
			 (uint32) (WriteRqst.Write >> 32), (uint32) WriteRqst.Write,
			 (uint32) (WriteRqst.Flush >> 32), (uint32) WriteRqst.Flush,
			 (uint32) (LogwrtResult.Write >> 32), (uint32) LogwrtResult.Write,
			 (uint32) (LogwrtResult.Flush >> 32), (uint32) LogwrtResult.Flush);
#endif

	FUNC6();

	/* now wait for any in-progress insertions to finish and get write lock */
	FUNC10(WriteRqst.Write);
	FUNC3(WALWriteLock, LW_EXCLUSIVE);
	LogwrtResult = XLogCtl->LogwrtResult;
	if (WriteRqst.Write > LogwrtResult.Write ||
		WriteRqst.Flush > LogwrtResult.Flush)
	{
		FUNC14(WriteRqst, flexible);
	}
	FUNC4(WALWriteLock);

	FUNC1();

	/* wake up walsenders now that we've released heavily contended locks */
	FUNC11();

	/*
	 * Great, done. To take some work off the critical path, try to initialize
	 * as many of the no-longer-needed WAL buffers for future use as we can.
	 */
	FUNC0(InvalidXLogRecPtr, true);

	/*
	 * If we determined that we need to write data, but somebody else
	 * wrote/flushed already, it should be considered as being active, to
	 * avoid hibernating too early.
	 */
	return true;
}