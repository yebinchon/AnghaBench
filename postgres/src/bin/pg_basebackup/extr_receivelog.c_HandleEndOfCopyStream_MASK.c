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
typedef  int /*<<< orphan*/  StreamCtl ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COPY_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int still_sending ; 

__attribute__((used)) static PGresult *
FUNC9(PGconn *conn, StreamCtl *stream, char *copybuf,
					  XLogRecPtr blockpos, XLogRecPtr *stoppos)
{
	PGresult   *res = FUNC4(conn);

	/*
	 * The server closed its end of the copy stream.  If we haven't closed
	 * ours already, we need to do so now, unless the server threw an error,
	 * in which case we don't.
	 */
	if (still_sending)
	{
		if (!FUNC7(stream, blockpos))
		{
			/* Error message written in close_walfile() */
			FUNC0(res);
			return NULL;
		}
		if (FUNC6(res) == PGRES_COPY_IN)
		{
			if (FUNC5(conn, NULL) <= 0 || FUNC2(conn))
			{
				FUNC8("could not send copy-end packet: %s",
							 FUNC1(conn));
				FUNC0(res);
				return NULL;
			}
			res = FUNC4(conn);
		}
		still_sending = false;
	}
	if (copybuf != NULL)
		FUNC3(copybuf);
	*stoppos = blockpos;
	return res;
}