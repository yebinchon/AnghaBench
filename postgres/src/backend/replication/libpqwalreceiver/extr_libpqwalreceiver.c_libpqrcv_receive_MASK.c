#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pgsocket ;
struct TYPE_3__ {char* recvBuf; int /*<<< orphan*/  streamConn; } ;
typedef  TYPE_1__ WalReceiverConn ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_COPY_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(WalReceiverConn *conn, char **buffer,
				 pgsocket *wait_fd)
{
	int			rawlen;

	if (conn->recvBuf != NULL)
		FUNC3(conn->recvBuf);
	conn->recvBuf = NULL;

	/* Try to receive a CopyData message */
	rawlen = FUNC4(conn->streamConn, &conn->recvBuf, 1);
	if (rawlen == 0)
	{
		/* Try consuming some data. */
		if (FUNC1(conn->streamConn) == 0)
			FUNC8(ERROR,
					(FUNC9("could not receive data from WAL stream: %s",
							FUNC11(FUNC2(conn->streamConn)))));

		/* Now that we've consumed some input, try again */
		rawlen = FUNC4(conn->streamConn, &conn->recvBuf, 1);
		if (rawlen == 0)
		{
			/* Tell caller to try again when our socket is ready. */
			*wait_fd = FUNC6(conn->streamConn);
			return 0;
		}
	}
	if (rawlen == -1)			/* end-of-streaming or error */
	{
		PGresult   *res;

		res = FUNC10(conn->streamConn);
		if (FUNC5(res) == PGRES_COMMAND_OK)
		{
			FUNC0(res);

			/* Verify that there are no more results. */
			res = FUNC10(conn->streamConn);
			if (res != NULL)
			{
				FUNC0(res);

				/*
				 * If the other side closed the connection orderly (otherwise
				 * we'd seen an error, or PGRES_COPY_IN) don't report an error
				 * here, but let callers deal with it.
				 */
				if (FUNC7(conn->streamConn) == CONNECTION_BAD)
					return -1;

				FUNC8(ERROR,
						(FUNC9("unexpected result after CommandComplete: %s",
								FUNC2(conn->streamConn))));
			}

			return -1;
		}
		else if (FUNC5(res) == PGRES_COPY_IN)
		{
			FUNC0(res);
			return -1;
		}
		else
		{
			FUNC0(res);
			FUNC8(ERROR,
					(FUNC9("could not receive data from WAL stream: %s",
							FUNC11(FUNC2(conn->streamConn)))));
		}
	}
	if (rawlen < -1)
		FUNC8(ERROR,
				(FUNC9("could not receive data from WAL stream: %s",
						FUNC11(FUNC2(conn->streamConn)))));

	/* Return received messages to caller */
	*buffer = conn->recvBuf;
	return rawlen;
}