#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
typedef  int XLogRecPtr ;
struct TYPE_2__ {int Write; } ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 scalar_t__ ARCHIVE_MODE_ALWAYS ; 
 scalar_t__ ENOSPC ; 
 TYPE_1__ LogstreamResult ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ XLogArchiveMode ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int recvFile ; 
 int /*<<< orphan*/  recvFileTLI ; 
 int recvOff ; 
 int /*<<< orphan*/  recvSegNo ; 
 int wal_segment_size ; 
 int FUNC14 (int,char*,int) ; 

__attribute__((used)) static void
FUNC15(char *buf, Size nbytes, XLogRecPtr recptr)
{
	int			startoff;
	int			byteswritten;

	while (nbytes > 0)
	{
		int			segbytes;

		if (recvFile < 0 || !FUNC0(recptr, recvSegNo, wal_segment_size))
		{
			bool		use_existent;

			/*
			 * fsync() and close current file before we switch to next one. We
			 * would otherwise have to reopen this file to fsync it later
			 */
			if (recvFile >= 0)
			{
				char		xlogfname[MAXFNAMELEN];

				FUNC8(false);

				/*
				 * XLOG segment files will be re-read by recovery in startup
				 * process soon, so we don't advise the OS to release cache
				 * pages associated with the file like XLogFileClose() does.
				 */
				if (FUNC9(recvFile) != 0)
					FUNC10(PANIC,
							(FUNC11(),
							 FUNC12("could not close log segment %s: %m",
									FUNC6(recvFileTLI, recvSegNo))));

				/*
				 * Create .done file forcibly to prevent the streamed segment
				 * from being archived later.
				 */
				FUNC5(xlogfname, recvFileTLI, recvSegNo, wal_segment_size);
				if (XLogArchiveMode != ARCHIVE_MODE_ALWAYS)
					FUNC2(xlogfname);
				else
					FUNC3(xlogfname);
			}
			recvFile = -1;

			/* Create/use new log file */
			FUNC1(recptr, recvSegNo, wal_segment_size);
			use_existent = true;
			recvFile = FUNC4(recvSegNo, &use_existent, true);
			recvFileTLI = ThisTimeLineID;
			recvOff = 0;
		}

		/* Calculate the start offset of the received logs */
		startoff = FUNC7(recptr, wal_segment_size);

		if (startoff + nbytes > wal_segment_size)
			segbytes = wal_segment_size - startoff;
		else
			segbytes = nbytes;

		/* Need to seek in the file? */
		if (recvOff != startoff)
		{
			if (FUNC13(recvFile, (off_t) startoff, SEEK_SET) < 0)
				FUNC10(PANIC,
						(FUNC11(),
						 FUNC12("could not seek in log segment %s to offset %u: %m",
								FUNC6(recvFileTLI, recvSegNo),
								startoff)));
			recvOff = startoff;
		}

		/* OK to write the logs */
		errno = 0;

		byteswritten = FUNC14(recvFile, buf, segbytes);
		if (byteswritten <= 0)
		{
			/* if write didn't set errno, assume no disk space */
			if (errno == 0)
				errno = ENOSPC;
			FUNC10(PANIC,
					(FUNC11(),
					 FUNC12("could not write to log segment %s "
							"at offset %u, length %lu: %m",
							FUNC6(recvFileTLI, recvSegNo),
							recvOff, (unsigned long) segbytes)));
		}

		/* Update state for write */
		recptr += byteswritten;

		recvOff += byteswritten;
		nbytes -= byteswritten;
		buf += byteswritten;

		LogstreamResult.Write = recptr;
	}
}