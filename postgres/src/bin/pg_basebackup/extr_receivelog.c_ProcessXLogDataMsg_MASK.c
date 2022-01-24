#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  timeline; scalar_t__ (* stream_stop ) (int,int /*<<< orphan*/ ,int) ;TYPE_1__* walmethod; } ;
struct TYPE_6__ {int (* get_current_pos ) (int /*<<< orphan*/ *) ;int (* write ) (int /*<<< orphan*/ *,char*,int) ;int /*<<< orphan*/  (* getlasterror ) () ;} ;
typedef  TYPE_2__ StreamCtl ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int WalSegSz ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  current_walfile_name ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int still_sending ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * walfile ; 

__attribute__((used)) static bool
FUNC13(PGconn *conn, StreamCtl *stream, char *copybuf, int len,
				   XLogRecPtr *blockpos)
{
	int			xlogoff;
	int			bytes_left;
	int			bytes_written;
	int			hdr_len;

	/*
	 * Once we've decided we don't want to receive any more, just ignore any
	 * subsequent XLogData messages.
	 */
	if (!(still_sending))
		return true;

	/*
	 * Read the header of the XLogData message, enclosed in the CopyData
	 * message. We only need the WAL location field (dataStart), the rest of
	 * the header is ignored.
	 */
	hdr_len = 1;				/* msgtype 'w' */
	hdr_len += 8;				/* dataStart */
	hdr_len += 8;				/* walEnd */
	hdr_len += 8;				/* sendTime */
	if (len < hdr_len)
	{
		FUNC7("streaming header too small: %d", len);
		return false;
	}
	*blockpos = FUNC5(&copybuf[1]);

	/* Extract WAL location for this block */
	xlogoff = FUNC3(*blockpos, WalSegSz);

	/*
	 * Verify that the initial location in the stream matches where we think
	 * we are.
	 */
	if (walfile == NULL)
	{
		/* No file open yet */
		if (xlogoff != 0)
		{
			FUNC7("received write-ahead log record for offset %u with no file open",
						 xlogoff);
			return false;
		}
	}
	else
	{
		/* More data in existing segment */
		if (stream->walmethod->get_current_pos(walfile) != xlogoff)
		{
			FUNC7("got WAL data offset %08x, expected %08x",
						 xlogoff, (int) stream->walmethod->get_current_pos(walfile));
			return false;
		}
	}

	bytes_left = len - hdr_len;
	bytes_written = 0;

	while (bytes_left)
	{
		int			bytes_to_write;

		/*
		 * If crossing a WAL boundary, only write up until we reach wal
		 * segment size.
		 */
		if (xlogoff + bytes_left > WalSegSz)
			bytes_to_write = WalSegSz - xlogoff;
		else
			bytes_to_write = bytes_left;

		if (walfile == NULL)
		{
			if (!FUNC6(stream, *blockpos))
			{
				/* Error logged by open_walfile */
				return false;
			}
		}

		if (stream->walmethod->write(walfile, copybuf + hdr_len + bytes_written,
									 bytes_to_write) != bytes_to_write)
		{
			FUNC7("could not write %u bytes to WAL file \"%s\": %s",
						 bytes_to_write, current_walfile_name,
						 stream->walmethod->getlasterror());
			return false;
		}

		/* Write was successful, advance our position */
		bytes_written += bytes_to_write;
		bytes_left -= bytes_to_write;
		*blockpos += bytes_to_write;
		xlogoff += bytes_to_write;

		/* Did we reach the end of a WAL segment? */
		if (FUNC3(*blockpos, WalSegSz) == 0)
		{
			if (!FUNC4(stream, *blockpos))
				/* Error message written in close_walfile() */
				return false;

			xlogoff = 0;

			if (still_sending && stream->stream_stop(*blockpos, stream->timeline, true))
			{
				if (FUNC2(conn, NULL) <= 0 || FUNC1(conn))
				{
					FUNC7("could not send copy-end packet: %s",
								 FUNC0(conn));
					return false;
				}
				still_sending = false;
				return true;	/* ignore the rest of this XLogData packet */
			}
		}
	}
	/* No more data left to write, receive next copy packet */

	return true;
}