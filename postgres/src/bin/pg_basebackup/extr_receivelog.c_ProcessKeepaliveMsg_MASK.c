#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_5__ {TYPE_1__* walmethod; } ;
struct TYPE_4__ {scalar_t__ (* sync ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getlasterror ) () ;} ;
typedef  TYPE_2__ StreamCtl ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  current_walfile_name ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ lastFlushPosition ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reportFlushPosition ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ still_sending ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * walfile ; 

__attribute__((used)) static bool
FUNC7(PGconn *conn, StreamCtl *stream, char *copybuf, int len,
					XLogRecPtr blockpos, TimestampTz *last_status)
{
	int			pos;
	bool		replyRequested;
	TimestampTz now;

	/*
	 * Parse the keepalive message, enclosed in the CopyData message. We just
	 * check if the server requested a reply, and ignore the rest.
	 */
	pos = 1;					/* skip msgtype 'k' */
	pos += 8;					/* skip walEnd */
	pos += 8;					/* skip sendTime */

	if (len < pos + 1)
	{
		FUNC2("streaming header too small: %d", len);
		return false;
	}
	replyRequested = copybuf[pos];

	/* If the server requested an immediate reply, send one. */
	if (replyRequested && still_sending)
	{
		if (reportFlushPosition && lastFlushPosition < blockpos &&
			walfile != NULL)
		{
			/*
			 * If a valid flush location needs to be reported, flush the
			 * current WAL file so that the latest flush location is sent back
			 * to the server. This is necessary to see whether the last WAL
			 * data has been successfully replicated or not, at the normal
			 * shutdown of the server.
			 */
			if (stream->walmethod->sync(walfile) != 0)
			{
				FUNC3("could not fsync file \"%s\": %s",
							 current_walfile_name, stream->walmethod->getlasterror());
				FUNC0(1);
			}
			lastFlushPosition = blockpos;
		}

		now = FUNC1();
		if (!FUNC4(conn, blockpos, now, false))
			return false;
		*last_status = now;
	}

	return true;
}