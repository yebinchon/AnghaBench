#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  asyncStatus; int /*<<< orphan*/ * last_query; int /*<<< orphan*/  queryclass; int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  pversion; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  PGASYNC_BUSY ; 
 int /*<<< orphan*/  PGQUERY_DESCRIBE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char,int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (char,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(PGconn *conn, char desc_type, const char *desc_target)
{
	/* Treat null desc_target as empty string */
	if (!desc_target)
		desc_target = "";

	if (!FUNC1(conn))
		return 0;

	/* This isn't gonna work on a 2.0 server */
	if (FUNC0(conn->pversion) < 3)
	{
		FUNC9(&conn->errorMessage,
						  FUNC3("function requires at least protocol version 3.0\n"));
		return 0;
	}

	/* construct the Describe message */
	if (FUNC6('D', false, conn) < 0 ||
		FUNC7(desc_type, conn) < 0 ||
		FUNC8(desc_target, conn) < 0 ||
		FUNC5(conn) < 0)
		goto sendFailed;

	/* construct the Sync message */
	if (FUNC6('S', false, conn) < 0 ||
		FUNC5(conn) < 0)
		goto sendFailed;

	/* remember we are doing a Describe */
	conn->queryclass = PGQUERY_DESCRIBE;

	/* reset last_query string (not relevant now) */
	if (conn->last_query)
	{
		FUNC2(conn->last_query);
		conn->last_query = NULL;
	}

	/*
	 * Give the data a push.  In nonblock mode, don't complain if we're unable
	 * to send it all; PQgetResult() will do any additional flushing needed.
	 */
	if (FUNC4(conn) < 0)
		goto sendFailed;

	/* OK, it's launched! */
	conn->asyncStatus = PGASYNC_BUSY;
	return 1;

sendFailed:
	/* error message should be set up already */
	return 0;
}