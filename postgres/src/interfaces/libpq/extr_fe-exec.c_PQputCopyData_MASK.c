#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ asyncStatus; int outBufSize; int outCount; int /*<<< orphan*/  pversion; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ PGASYNC_COPY_BOTH ; 
 scalar_t__ PGASYNC_COPY_IN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (char,int,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(PGconn *conn, const char *buffer, int nbytes)
{
	if (!conn)
		return -1;
	if (conn->asyncStatus != PGASYNC_COPY_IN &&
		conn->asyncStatus != PGASYNC_COPY_BOTH)
	{
		FUNC9(&conn->errorMessage,
						  FUNC1("no COPY in progress\n"));
		return -1;
	}

	/*
	 * Process any NOTICE or NOTIFY messages that might be pending in the
	 * input buffer.  Since the server might generate many notices during the
	 * COPY, we want to clean those out reasonably promptly to prevent
	 * indefinite expansion of the input buffer.  (Note: the actual read of
	 * input data into the input buffer happens down inside pqSendSome, but
	 * it's not authorized to get rid of the data again.)
	 */
	FUNC2(conn);

	if (nbytes > 0)
	{
		/*
		 * Try to flush any previously sent data in preference to growing the
		 * output buffer.  If we can't enlarge the buffer enough to hold the
		 * data, return 0 in the nonblock case, else hard error. (For
		 * simplicity, always assume 5 bytes of overhead even in protocol 2.0
		 * case.)
		 */
		if ((conn->outBufSize - conn->outCount - 5) < nbytes)
		{
			if (FUNC4(conn) < 0)
				return -1;
			if (FUNC3(conn->outCount + 5 + (size_t) nbytes,
									  conn))
				return FUNC5(conn) ? 0 : -1;
		}
		/* Send the data (too simple to delegate to fe-protocol files) */
		if (FUNC0(conn->pversion) >= 3)
		{
			if (FUNC7('d', false, conn) < 0 ||
				FUNC8(buffer, nbytes, conn) < 0 ||
				FUNC6(conn) < 0)
				return -1;
		}
		else
		{
			if (FUNC7(0, false, conn) < 0 ||
				FUNC8(buffer, nbytes, conn) < 0 ||
				FUNC6(conn) < 0)
				return -1;
		}
	}
	return 1;
}