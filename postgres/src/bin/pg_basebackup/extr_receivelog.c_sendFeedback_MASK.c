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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lastFlushPosition ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ reportFlushPosition ; 

__attribute__((used)) static bool
FUNC5(PGconn *conn, XLogRecPtr blockpos, TimestampTz now, bool replyRequested)
{
	char		replybuf[1 + 8 + 8 + 8 + 8 + 1];
	int			len = 0;

	replybuf[len] = 'r';
	len += 1;
	FUNC3(blockpos, &replybuf[len]); /* write */
	len += 8;
	if (reportFlushPosition)
		FUNC3(lastFlushPosition, &replybuf[len]);	/* flush */
	else
		FUNC3(InvalidXLogRecPtr, &replybuf[len]);	/* flush */
	len += 8;
	FUNC3(InvalidXLogRecPtr, &replybuf[len]);	/* apply */
	len += 8;
	FUNC3(now, &replybuf[len]);	/* sendTime */
	len += 8;
	replybuf[len] = replyRequested ? 1 : 0; /* replyRequested */
	len += 1;

	if (FUNC2(conn, replybuf, len) <= 0 || FUNC1(conn))
	{
		FUNC4("could not send feedback packet: %s",
					 FUNC0(conn));
		return false;
	}

	return true;
}