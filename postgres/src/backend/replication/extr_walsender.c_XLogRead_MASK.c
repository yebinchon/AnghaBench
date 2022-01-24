#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ XLogSegNo ;
typedef  int XLogRecPtr ;
struct TYPE_6__ {int needreload; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ WalSnd ;
struct TYPE_7__ {scalar_t__ ws_segsize; } ;
typedef  TYPE_2__ WALSegmentContext ;
struct TYPE_8__ {int ws_file; scalar_t__ ws_segno; scalar_t__ ws_off; int /*<<< orphan*/  ws_tli; } ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 TYPE_1__* MyWalSnd ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_READ ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 scalar_t__ am_cascading_walsender ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int,char*,int) ; 
 TYPE_3__* sendSeg ; 
 int /*<<< orphan*/  sendTimeLine ; 
 scalar_t__ sendTimeLineIsHistoric ; 
 int /*<<< orphan*/  sendTimeLineNextTLI ; 
 int sendTimeLineValidUpto ; 

__attribute__((used)) static void
FUNC18(WALSegmentContext *segcxt, char *buf, XLogRecPtr startptr, Size count)
{
	char	   *p;
	XLogRecPtr	recptr;
	Size		nbytes;
	XLogSegNo	segno;

retry:
	p = buf;
	recptr = startptr;
	nbytes = count;

	while (nbytes > 0)
	{
		uint32		startoff;
		int			segbytes;
		int			readbytes;

		startoff = FUNC8(recptr, segcxt->ws_segsize);

		if (sendSeg->ws_file < 0 ||
			!FUNC4(recptr, sendSeg->ws_segno, segcxt->ws_segsize))
		{
			char		path[MAXPGPATH];

			/* Switch to another logfile segment */
			if (sendSeg->ws_file >= 0)
				FUNC9(sendSeg->ws_file);

			FUNC5(recptr, sendSeg->ws_segno, segcxt->ws_segsize);

			/*-------
			 * When reading from a historic timeline, and there is a timeline
			 * switch within this segment, read from the WAL segment belonging
			 * to the new timeline.
			 *
			 * For example, imagine that this server is currently on timeline
			 * 5, and we're streaming timeline 4. The switch from timeline 4
			 * to 5 happened at 0/13002088. In pg_wal, we have these files:
			 *
			 * ...
			 * 000000040000000000000012
			 * 000000040000000000000013
			 * 000000050000000000000013
			 * 000000050000000000000014
			 * ...
			 *
			 * In this situation, when requested to send the WAL from
			 * segment 0x13, on timeline 4, we read the WAL from file
			 * 000000050000000000000013. Archive recovery prefers files from
			 * newer timelines, so if the segment was restored from the
			 * archive on this server, the file belonging to the old timeline,
			 * 000000040000000000000013, might not exist. Their contents are
			 * equal up to the switchpoint, because at a timeline switch, the
			 * used portion of the old segment is copied to the new file.
			 *-------
			 */
			sendSeg->ws_tli = sendTimeLine;
			if (sendTimeLineIsHistoric)
			{
				XLogSegNo	endSegNo;

				FUNC5(sendTimeLineValidUpto, endSegNo, segcxt->ws_segsize);
				if (sendSeg->ws_segno == endSegNo)
					sendSeg->ws_tli = sendTimeLineNextTLI;
			}

			FUNC7(path, sendSeg->ws_tli, sendSeg->ws_segno, segcxt->ws_segsize);

			sendSeg->ws_file = FUNC0(path, O_RDONLY | PG_BINARY);
			if (sendSeg->ws_file < 0)
			{
				/*
				 * If the file is not found, assume it's because the standby
				 * asked for a too old WAL segment that has already been
				 * removed or recycled.
				 */
				if (errno == ENOENT)
					FUNC10(ERROR,
							(FUNC12(),
							 FUNC13("requested WAL segment %s has already been removed",
									FUNC6(sendSeg->ws_tli, sendSeg->ws_segno))));
				else
					FUNC10(ERROR,
							(FUNC12(),
							 FUNC13("could not open file \"%s\": %m",
									path)));
			}
			sendSeg->ws_off = 0;
		}

		/* Need to seek in the file? */
		if (sendSeg->ws_off != startoff)
		{
			if (FUNC14(sendSeg->ws_file, (off_t) startoff, SEEK_SET) < 0)
				FUNC10(ERROR,
						(FUNC12(),
						 FUNC13("could not seek in log segment %s to offset %u: %m",
								FUNC6(sendSeg->ws_tli, sendSeg->ws_segno),
								startoff)));
			sendSeg->ws_off = startoff;
		}

		/* How many bytes are within this segment? */
		if (nbytes > (segcxt->ws_segsize - startoff))
			segbytes = segcxt->ws_segsize - startoff;
		else
			segbytes = nbytes;

		FUNC16(WAIT_EVENT_WAL_READ);
		readbytes = FUNC17(sendSeg->ws_file, p, segbytes);
		FUNC15();
		if (readbytes < 0)
		{
			FUNC10(ERROR,
					(FUNC12(),
					 FUNC13("could not read from log segment %s, offset %u, length %zu: %m",
							FUNC6(sendSeg->ws_tli, sendSeg->ws_segno),
							sendSeg->ws_off, (Size) segbytes)));
		}
		else if (readbytes == 0)
		{
			FUNC10(ERROR,
					(FUNC11(ERRCODE_DATA_CORRUPTED),
					 FUNC13("could not read from log segment %s, offset %u: read %d of %zu",
							FUNC6(sendSeg->ws_tli, sendSeg->ws_segno),
							sendSeg->ws_off, readbytes, (Size) segbytes)));
		}

		/* Update state for read */
		recptr += readbytes;

		sendSeg->ws_off += readbytes;
		nbytes -= readbytes;
		p += readbytes;
	}

	/*
	 * After reading into the buffer, check that what we read was valid. We do
	 * this after reading, because even though the segment was present when we
	 * opened it, it might get recycled or removed while we read it. The
	 * read() succeeds in that case, but the data we tried to read might
	 * already have been overwritten with new WAL records.
	 */
	FUNC5(startptr, segno, segcxt->ws_segsize);
	FUNC1(segno, ThisTimeLineID);

	/*
	 * During recovery, the currently-open WAL file might be replaced with the
	 * file of the same name retrieved from archive. So we always need to
	 * check what we read was valid after reading into the buffer. If it's
	 * invalid, we try to open and read the file again.
	 */
	if (am_cascading_walsender)
	{
		WalSnd	   *walsnd = MyWalSnd;
		bool		reload;

		FUNC2(&walsnd->mutex);
		reload = walsnd->needreload;
		walsnd->needreload = false;
		FUNC3(&walsnd->mutex);

		if (reload && sendSeg->ws_file >= 0)
		{
			FUNC9(sendSeg->ws_file);
			sendSeg->ws_file = -1;

			goto retry;
		}
	}
}