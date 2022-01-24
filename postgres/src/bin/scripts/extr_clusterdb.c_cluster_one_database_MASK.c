#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC12(const char *dbname, bool verbose, const char *table,
					 const char *host, const char *port,
					 const char *username, enum trivalue prompt_password,
					 const char *progname, bool echo)
{
	PQExpBufferData sql;

	PGconn	   *conn;

	conn = FUNC6(dbname, host, port, username, prompt_password,
						   progname, echo, false, false);

	FUNC9(&sql);

	FUNC4(&sql, "CLUSTER");
	if (verbose)
		FUNC4(&sql, " VERBOSE");
	if (table)
	{
		FUNC3(&sql, ' ');
		FUNC5(&sql, table, conn, echo);
	}
	FUNC3(&sql, ';');

	if (!FUNC7(conn, sql.data, echo))
	{
		if (table)
			FUNC10("clustering of table \"%s\" in database \"%s\" failed: %s",
						 table, FUNC0(conn), FUNC1(conn));
		else
			FUNC10("clustering of database \"%s\" failed: %s",
						 FUNC0(conn), FUNC1(conn));
		FUNC2(conn);
		FUNC8(1);
	}
	FUNC2(conn);
	FUNC11(&sql);
}