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
struct TYPE_3__ {int /*<<< orphan*/  streamConn; } ;
typedef  TYPE_1__ WalReceiverConn ;
typedef  scalar_t__ TimeLineID ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_COPY_OUT ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(WalReceiverConn *conn, TimeLineID *next_tli)
{
	PGresult   *res;

	/*
	 * Send copy-end message.  As in libpqrcv_PQexec, this could theoretically
	 * block, but the risk seems small.
	 */
	if (FUNC7(conn->streamConn, NULL) <= 0 ||
		FUNC3(conn->streamConn))
		FUNC9(ERROR,
				(FUNC10("could not send end-of-streaming message to primary: %s",
						FUNC12(FUNC2(conn->streamConn)))));

	*next_tli = 0;

	/*
	 * After COPY is finished, we should receive a result set indicating the
	 * next timeline's ID, or just CommandComplete if the server was shut
	 * down.
	 *
	 * If we had not yet received CopyDone from the backend, PGRES_COPY_OUT is
	 * also possible in case we aborted the copy in mid-stream.
	 */
	res = FUNC11(conn->streamConn);
	if (FUNC8(res) == PGRES_TUPLES_OK)
	{
		/*
		 * Read the next timeline's ID. The server also sends the timeline's
		 * starting point, but it is ignored.
		 */
		if (FUNC5(res) < 2 || FUNC6(res) != 1)
			FUNC9(ERROR,
					(FUNC10("unexpected result set after end-of-streaming")));
		*next_tli = FUNC13(FUNC4(res, 0, 0));
		FUNC0(res);

		/* the result set should be followed by CommandComplete */
		res = FUNC11(conn->streamConn);
	}
	else if (FUNC8(res) == PGRES_COPY_OUT)
	{
		FUNC0(res);

		/* End the copy */
		if (FUNC1(conn->streamConn))
			FUNC9(ERROR,
					(FUNC10("error while shutting down streaming COPY: %s",
							FUNC12(FUNC2(conn->streamConn)))));

		/* CommandComplete should follow */
		res = FUNC11(conn->streamConn);
	}

	if (FUNC8(res) != PGRES_COMMAND_OK)
		FUNC9(ERROR,
				(FUNC10("error reading result of streaming command: %s",
						FUNC12(FUNC2(conn->streamConn)))));
	FUNC0(res);

	/* Verify that there are no more results */
	res = FUNC11(conn->streamConn);
	if (res != NULL)
		FUNC9(ERROR,
				(FUNC10("unexpected result after CommandComplete: %s",
						FUNC12(FUNC2(conn->streamConn)))));
}