#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int /*<<< orphan*/  XLogRecord ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  ws_tli; } ;
struct TYPE_8__ {scalar_t__ EndRecPtr; int /*<<< orphan*/  latestPageTLI; TYPE_1__ seg; int /*<<< orphan*/  latestPagePtr; int /*<<< orphan*/  ReadRecPtr; scalar_t__ private_data; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int fetching_ckpt; int emode; int randAccess; } ;
typedef  TYPE_3__ XLogPageReadPrivate ;
struct TYPE_10__ {scalar_t__ minRecoveryPoint; int /*<<< orphan*/  minRecoveryPointTLI; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ ArchiveRecoveryRequested ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_6__* ControlFile ; 
 int /*<<< orphan*/  ControlFileLock ; 
 int /*<<< orphan*/  DB_IN_ARCHIVE_RECOVERY ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ EndRecPtr ; 
 int InArchiveRecovery ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  ReadRecPtr ; 
 int StandbyMode ; 
 scalar_t__ StandbyModeRequested ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ currentSource ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  expectedTLEs ; 
 int lastSourceFailed ; 
 scalar_t__ minRecoveryPoint ; 
 int /*<<< orphan*/  minRecoveryPointTLI ; 
 int readFile ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int updateMinRecoveryPoint ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static XLogRecord *
FUNC15(XLogReaderState *xlogreader, XLogRecPtr RecPtr, int emode,
		   bool fetching_ckpt)
{
	XLogRecord *record;
	XLogPageReadPrivate *private = (XLogPageReadPrivate *) xlogreader->private_data;

	/* Pass through parameters to XLogPageRead */
	private->fetching_ckpt = fetching_ckpt;
	private->emode = emode;
	private->randAccess = (RecPtr != InvalidXLogRecPtr);

	/* This is the first attempt to read this page. */
	lastSourceFailed = false;

	for (;;)
	{
		char	   *errormsg;

		record = FUNC7(xlogreader, RecPtr, &errormsg);
		ReadRecPtr = xlogreader->ReadRecPtr;
		EndRecPtr = xlogreader->EndRecPtr;
		if (record == NULL)
		{
			if (readFile >= 0)
			{
				FUNC9(readFile);
				readFile = -1;
			}

			/*
			 * We only end up here without a message when XLogPageRead()
			 * failed - in that case we already logged something. In
			 * StandbyMode that only happens if we have been triggered, so we
			 * shouldn't loop anymore in that case.
			 */
			if (errormsg)
				FUNC11(FUNC10(emode,
												 RecPtr ? RecPtr : EndRecPtr),
						(FUNC13("%s", errormsg) /* already translated */ ));
		}

		/*
		 * Check page TLI is one of the expected values.
		 */
		else if (!FUNC14(xlogreader->latestPageTLI, expectedTLEs))
		{
			char		fname[MAXFNAMELEN];
			XLogSegNo	segno;
			int32		offset;

			FUNC5(xlogreader->latestPagePtr, segno, wal_segment_size);
			offset = FUNC8(xlogreader->latestPagePtr,
									   wal_segment_size);
			FUNC6(fname, xlogreader->seg.ws_tli, segno,
						 wal_segment_size);
			FUNC11(FUNC10(emode,
											 RecPtr ? RecPtr : EndRecPtr),
					(FUNC12("unexpected timeline ID %u in log segment %s, offset %u",
							xlogreader->latestPageTLI,
							fname,
							offset)));
			record = NULL;
		}

		if (record)
		{
			/* Great, got a record */
			return record;
		}
		else
		{
			/* No valid record available from this source */
			lastSourceFailed = true;

			/*
			 * If archive recovery was requested, but we were still doing
			 * crash recovery, switch to archive recovery and retry using the
			 * offline archive. We have now replayed all the valid WAL in
			 * pg_wal, so we are presumably now consistent.
			 *
			 * We require that there's at least some valid WAL present in
			 * pg_wal, however (!fetching_ckpt).  We could recover using the
			 * WAL from the archive, even if pg_wal is completely empty, but
			 * we'd have no idea how far we'd have to replay to reach
			 * consistency.  So err on the safe side and give up.
			 */
			if (!InArchiveRecovery && ArchiveRecoveryRequested &&
				!fetching_ckpt)
			{
				FUNC11(DEBUG1,
						(FUNC13("reached end of WAL in pg_wal, entering archive recovery")));
				InArchiveRecovery = true;
				if (StandbyModeRequested)
					StandbyMode = true;

				/* initialize minRecoveryPoint to this record */
				FUNC2(ControlFileLock, LW_EXCLUSIVE);
				ControlFile->state = DB_IN_ARCHIVE_RECOVERY;
				if (ControlFile->minRecoveryPoint < EndRecPtr)
				{
					ControlFile->minRecoveryPoint = EndRecPtr;
					ControlFile->minRecoveryPointTLI = ThisTimeLineID;
				}
				/* update local copy */
				minRecoveryPoint = ControlFile->minRecoveryPoint;
				minRecoveryPointTLI = ControlFile->minRecoveryPointTLI;

				/*
				 * The startup process can update its local copy of
				 * minRecoveryPoint from this point.
				 */
				updateMinRecoveryPoint = true;

				FUNC4();
				FUNC3(ControlFileLock);

				FUNC1();

				/*
				 * Before we retry, reset lastSourceFailed and currentSource
				 * so that we will check the archive next.
				 */
				lastSourceFailed = false;
				currentSource = 0;

				continue;
			}

			/* In standby mode, loop back to retry. Otherwise, give up. */
			if (StandbyMode && !FUNC0())
				continue;
			else
				return NULL;
		}
	}
}