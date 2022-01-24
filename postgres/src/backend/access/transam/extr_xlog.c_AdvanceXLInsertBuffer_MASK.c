#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_11__ {scalar_t__ Flush; scalar_t__ Write; } ;
typedef  TYPE_2__ XLogwrtRqst ;
typedef  scalar_t__ XLogRecPtr ;
typedef  TYPE_3__* XLogPageHeader ;
typedef  TYPE_4__* XLogLongPageHeader ;
struct TYPE_14__ {int /*<<< orphan*/  forcePageWrites; } ;
typedef  TYPE_5__ XLogCtlInsert ;
struct TYPE_17__ {int /*<<< orphan*/  system_identifier; } ;
struct TYPE_16__ {scalar_t__ Write; } ;
struct TYPE_10__ {scalar_t__ Write; } ;
struct TYPE_15__ {scalar_t__ InitializedUpTo; scalar_t__* xlblocks; scalar_t__ pages; TYPE_8__ LogwrtResult; int /*<<< orphan*/  info_lck; TYPE_1__ LogwrtRqst; TYPE_5__ Insert; } ;
struct TYPE_13__ {scalar_t__ xlp_xlog_blcksz; int /*<<< orphan*/  xlp_seg_size; int /*<<< orphan*/  xlp_sysid; } ;
struct TYPE_12__ {int /*<<< orphan*/  xlp_info; scalar_t__ xlp_pageaddr; int /*<<< orphan*/  xlp_tli; int /*<<< orphan*/  xlp_magic; } ;
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_9__* ControlFile ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_8__ LogwrtResult ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  WALBufMappingLock ; 
 int /*<<< orphan*/  WALWriteLock ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ XLOG_BLCKSZ ; 
 scalar_t__ XLOG_DEBUG ; 
 int /*<<< orphan*/  XLOG_PAGE_MAGIC ; 
 int /*<<< orphan*/  XLP_BKP_REMOVABLE ; 
 int /*<<< orphan*/  XLP_LONG_HEADER ; 
 TYPE_7__* XLogCtl ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static void
FUNC14(XLogRecPtr upto, bool opportunistic)
{
	XLogCtlInsert *Insert = &XLogCtl->Insert;
	int			nextidx;
	XLogRecPtr	OldPageRqstPtr;
	XLogwrtRqst WriteRqst;
	XLogRecPtr	NewPageEndPtr = InvalidXLogRecPtr;
	XLogRecPtr	NewPageBeginPtr;
	XLogPageHeader NewPage;
	int			npages = 0;

	FUNC1(WALBufMappingLock, LW_EXCLUSIVE);

	/*
	 * Now that we have the lock, check if someone initialized the page
	 * already.
	 */
	while (upto >= XLogCtl->InitializedUpTo || opportunistic)
	{
		nextidx = FUNC9(XLogCtl->InitializedUpTo);

		/*
		 * Get ending-offset of the buffer page we need to replace (this may
		 * be zero if the buffer hasn't been used yet).  Fall through if it's
		 * already written out.
		 */
		OldPageRqstPtr = XLogCtl->xlblocks[nextidx];
		if (LogwrtResult.Write < OldPageRqstPtr)
		{
			/*
			 * Nope, got work to do. If we just want to pre-initialize as much
			 * as we can without flushing, give up now.
			 */
			if (opportunistic)
				break;

			/* Before waiting, get info_lck and update LogwrtResult */
			FUNC4(&XLogCtl->info_lck);
			if (XLogCtl->LogwrtRqst.Write < OldPageRqstPtr)
				XLogCtl->LogwrtRqst.Write = OldPageRqstPtr;
			LogwrtResult = XLogCtl->LogwrtResult;
			FUNC5(&XLogCtl->info_lck);

			/*
			 * Now that we have an up-to-date LogwrtResult value, see if we
			 * still need to write it or if someone else already did.
			 */
			if (LogwrtResult.Write < OldPageRqstPtr)
			{
				/*
				 * Must acquire write lock. Release WALBufMappingLock first,
				 * to make sure that all insertions that we need to wait for
				 * can finish (up to this same position). Otherwise we risk
				 * deadlock.
				 */
				FUNC2(WALBufMappingLock);

				FUNC8(OldPageRqstPtr);

				FUNC1(WALWriteLock, LW_EXCLUSIVE);

				LogwrtResult = XLogCtl->LogwrtResult;
				if (LogwrtResult.Write >= OldPageRqstPtr)
				{
					/* OK, someone wrote it already */
					FUNC2(WALWriteLock);
				}
				else
				{
					/* Have to write it ourselves */
					FUNC7();
					WriteRqst.Write = OldPageRqstPtr;
					WriteRqst.Flush = 0;
					FUNC11(WriteRqst, false);
					FUNC2(WALWriteLock);
					FUNC6();
				}
				/* Re-acquire WALBufMappingLock and retry */
				FUNC1(WALBufMappingLock, LW_EXCLUSIVE);
				continue;
			}
		}

		/*
		 * Now the next buffer slot is free and we can set it up to be the
		 * next output page.
		 */
		NewPageBeginPtr = XLogCtl->InitializedUpTo;
		NewPageEndPtr = NewPageBeginPtr + XLOG_BLCKSZ;

		FUNC0(FUNC9(NewPageBeginPtr) == nextidx);

		NewPage = (XLogPageHeader) (XLogCtl->pages + nextidx * (Size) XLOG_BLCKSZ);

		/*
		 * Be sure to re-zero the buffer so that bytes beyond what we've
		 * written will look like zeroes and not valid XLOG records...
		 */
		FUNC3((char *) NewPage, 0, XLOG_BLCKSZ);

		/*
		 * Fill the new page's header
		 */
		NewPage->xlp_magic = XLOG_PAGE_MAGIC;

		/* NewPage->xlp_info = 0; */	/* done by memset */
		NewPage->xlp_tli = ThisTimeLineID;
		NewPage->xlp_pageaddr = NewPageBeginPtr;

		/* NewPage->xlp_rem_len = 0; */	/* done by memset */

		/*
		 * If online backup is not in progress, mark the header to indicate
		 * that WAL records beginning in this page have removable backup
		 * blocks.  This allows the WAL archiver to know whether it is safe to
		 * compress archived WAL data by transforming full-block records into
		 * the non-full-block format.  It is sufficient to record this at the
		 * page level because we force a page switch (in fact a segment
		 * switch) when starting a backup, so the flag will be off before any
		 * records can be written during the backup.  At the end of a backup,
		 * the last page will be marked as all unsafe when perhaps only part
		 * is unsafe, but at worst the archiver would miss the opportunity to
		 * compress a few records.
		 */
		if (!Insert->forcePageWrites)
			NewPage->xlp_info |= XLP_BKP_REMOVABLE;

		/*
		 * If first page of an XLOG segment file, make it a long header.
		 */
		if ((FUNC10(NewPage->xlp_pageaddr, wal_segment_size)) == 0)
		{
			XLogLongPageHeader NewLongPage = (XLogLongPageHeader) NewPage;

			NewLongPage->xlp_sysid = ControlFile->system_identifier;
			NewLongPage->xlp_seg_size = wal_segment_size;
			NewLongPage->xlp_xlog_blcksz = XLOG_BLCKSZ;
			NewPage->xlp_info |= XLP_LONG_HEADER;
		}

		/*
		 * Make sure the initialization of the page becomes visible to others
		 * before the xlblocks update. GetXLogBuffer() reads xlblocks without
		 * holding a lock.
		 */
		FUNC13();

		*((volatile XLogRecPtr *) &XLogCtl->xlblocks[nextidx]) = NewPageEndPtr;

		XLogCtl->InitializedUpTo = NewPageEndPtr;

		npages++;
	}
	FUNC2(WALBufMappingLock);

#ifdef WAL_DEBUG
	if (XLOG_DEBUG && npages > 0)
	{
		elog(DEBUG1, "initialized %d pages, up to %X/%X",
			 npages, (uint32) (NewPageEndPtr >> 32), (uint32) NewPageEndPtr);
	}
#endif
}