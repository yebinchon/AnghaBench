#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  query ;
typedef  int /*<<< orphan*/  qbuf ;
struct TYPE_9__ {scalar_t__ status; int /*<<< orphan*/  pversion; } ;
struct TYPE_8__ {scalar_t__ resultStatus; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (char const*) ; 

int
FUNC9(PGconn *conn, const char *encoding)
{
	char		qbuf[128];
	static const char query[] = "set client_encoding to '%s'";
	PGresult   *res;
	int			status;

	if (!conn || conn->status != CONNECTION_OK)
		return -1;

	if (!encoding)
		return -1;

	/* Resolve special "auto" value from the locale */
	if (FUNC7(encoding, "auto") == 0)
		encoding = FUNC3(FUNC4(NULL, true));

	/* check query buffer overflow */
	if (sizeof(qbuf) < (sizeof(query) + FUNC8(encoding)))
		return -1;

	/* ok, now send a query */
	FUNC6(qbuf, query, encoding);
	res = FUNC2(conn, qbuf);

	if (res == NULL)
		return -1;
	if (res->resultStatus != PGRES_COMMAND_OK)
		status = -1;
	else
	{
		/*
		 * In protocol 2 we have to assume the setting will stick, and adjust
		 * our state immediately.  In protocol 3 and up we can rely on the
		 * backend to report the parameter value, and we'll change state at
		 * that time.
		 */
		if (FUNC0(conn->pversion) < 3)
			FUNC5(conn, "client_encoding", encoding);
		status = 0;				/* everything is ok */
	}
	FUNC1(res);
	return status;
}