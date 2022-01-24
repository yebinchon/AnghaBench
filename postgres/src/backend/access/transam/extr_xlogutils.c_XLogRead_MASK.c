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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  int XLogRecPtr ;
typedef  scalar_t__ TimeLineID ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_READ ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int errno ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,char*,int) ; 
 int wal_segment_size ; 

__attribute__((used)) static void
FUNC14(char *buf, int segsize, TimeLineID tli, XLogRecPtr startptr,
		 Size count)
{
	char	   *p;
	XLogRecPtr	recptr;
	Size		nbytes;

	/* state maintained across calls */
	static int	sendFile = -1;
	static XLogSegNo sendSegNo = 0;
	static TimeLineID sendTLI = 0;
	static uint32 sendOff = 0;

	FUNC0(segsize == wal_segment_size);

	p = buf;
	recptr = startptr;
	nbytes = count;

	while (nbytes > 0)
	{
		uint32		startoff;
		int			segbytes;
		int			readbytes;

		startoff = FUNC5(recptr, segsize);

		/* Do we need to switch to a different xlog segment? */
		if (sendFile < 0 || !FUNC2(recptr, sendSegNo, segsize) ||
			sendTLI != tli)
		{
			char		path[MAXPGPATH];

			if (sendFile >= 0)
				FUNC6(sendFile);

			FUNC3(recptr, sendSegNo, segsize);

			FUNC4(path, tli, sendSegNo, segsize);

			sendFile = FUNC1(path, O_RDONLY | PG_BINARY);

			if (sendFile < 0)
			{
				if (errno == ENOENT)
					FUNC7(ERROR,
							(FUNC8(),
							 FUNC9("requested WAL segment %s has already been removed",
									path)));
				else
					FUNC7(ERROR,
							(FUNC8(),
							 FUNC9("could not open file \"%s\": %m",
									path)));
			}
			sendOff = 0;
			sendTLI = tli;
		}

		/* Need to seek in the file? */
		if (sendOff != startoff)
		{
			if (FUNC10(sendFile, (off_t) startoff, SEEK_SET) < 0)
			{
				char		path[MAXPGPATH];
				int			save_errno = errno;

				FUNC4(path, tli, sendSegNo, segsize);
				errno = save_errno;
				FUNC7(ERROR,
						(FUNC8(),
						 FUNC9("could not seek in log segment %s to offset %u: %m",
								path, startoff)));
			}
			sendOff = startoff;
		}

		/* How many bytes are within this segment? */
		if (nbytes > (segsize - startoff))
			segbytes = segsize - startoff;
		else
			segbytes = nbytes;

		FUNC12(WAIT_EVENT_WAL_READ);
		readbytes = FUNC13(sendFile, p, segbytes);
		FUNC11();
		if (readbytes <= 0)
		{
			char		path[MAXPGPATH];
			int			save_errno = errno;

			FUNC4(path, tli, sendSegNo, segsize);
			errno = save_errno;
			FUNC7(ERROR,
					(FUNC8(),
					 FUNC9("could not read from log segment %s, offset %u, length %lu: %m",
							path, sendOff, (unsigned long) segbytes)));
		}

		/* Update state for read */
		recptr += readbytes;

		sendOff += readbytes;
		nbytes -= readbytes;
		p += readbytes;
	}
}