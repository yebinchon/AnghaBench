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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

void
FUNC9(PGconn *conn, const char *query, bool echo)
{
	PGresult   *res;

	if (echo)
		FUNC8("%s\n", query);

	res = FUNC2(conn, query);
	if (!res ||
		FUNC4(res) != PGRES_COMMAND_OK)
	{
		FUNC6("query failed: %s", FUNC1(conn));
		FUNC7("query was: %s", query);
		FUNC3(conn);
		FUNC5(1);
	}

	FUNC0(res);
}