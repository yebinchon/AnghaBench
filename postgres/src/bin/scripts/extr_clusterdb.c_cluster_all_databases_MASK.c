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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*,char const*,char const*,int,char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char const*,char const*,char const*,int,char const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC15(bool verbose, const char *maintenance_db,
					  const char *host, const char *port,
					  const char *username, enum trivalue prompt_password,
					  const char *progname, bool echo, bool quiet)
{
	PGconn	   *conn;
	PGresult   *result;
	PQExpBufferData connstr;
	int			i;

	conn = FUNC8(maintenance_db, host, port, username,
									  prompt_password, progname, echo);
	result = FUNC9(conn, "SELECT datname FROM pg_database WHERE datallowconn ORDER BY 1;", echo);
	FUNC1(conn);

	FUNC11(&connstr);
	for (i = 0; i < FUNC3(result); i++)
	{
		char	   *dbname = FUNC2(result, i, 0);

		if (!quiet)
		{
			FUNC12(FUNC4("%s: clustering database \"%s\"\n"), progname, dbname);
			FUNC10(stdout);
		}

		FUNC13(&connstr);
		FUNC6(&connstr, "dbname=");
		FUNC5(&connstr, dbname);

		FUNC7(connstr.data, verbose, NULL,
							 host, port, username, prompt_password,
							 progname, echo);
	}
	FUNC14(&connstr);

	FUNC0(result);
}