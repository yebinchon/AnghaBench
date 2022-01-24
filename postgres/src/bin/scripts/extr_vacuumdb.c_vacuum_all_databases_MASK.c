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
typedef  int /*<<< orphan*/  vacuumingOptions ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int ANALYZE_NO_STAGE ; 
 int ANALYZE_NUM_STAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char const*,char const*,char const*,int,char const*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const*,char const*,char const*,int,int,char const*,int,int) ; 

__attribute__((used)) static void
FUNC12(vacuumingOptions *vacopts,
					 bool analyze_in_stages,
					 const char *maintenance_db, const char *host,
					 const char *port, const char *username,
					 enum trivalue prompt_password,
					 int concurrentCons,
					 const char *progname, bool echo, bool quiet)
{
	PGconn	   *conn;
	PGresult   *result;
	PQExpBufferData connstr;
	int			stage;
	int			i;

	conn = FUNC6(maintenance_db, host, port, username,
									  prompt_password, progname, echo);
	result = FUNC7(conn,
						  "SELECT datname FROM pg_database WHERE datallowconn ORDER BY 1;",
						  echo);
	FUNC1(conn);

	FUNC8(&connstr);
	if (analyze_in_stages)
	{
		/*
		 * When analyzing all databases in stages, we analyze them all in the
		 * fastest stage first, so that initial statistics become available
		 * for all of them as soon as possible.
		 *
		 * This means we establish several times as many connections, but
		 * that's a secondary consideration.
		 */
		for (stage = 0; stage < ANALYZE_NUM_STAGES; stage++)
		{
			for (i = 0; i < FUNC3(result); i++)
			{
				FUNC9(&connstr);
				FUNC5(&connstr, "dbname=");
				FUNC4(&connstr, FUNC2(result, i, 0));

				FUNC11(connstr.data, vacopts,
									stage,
									NULL,
									host, port, username, prompt_password,
									concurrentCons,
									progname, echo, quiet);
			}
		}
	}
	else
	{
		for (i = 0; i < FUNC3(result); i++)
		{
			FUNC9(&connstr);
			FUNC5(&connstr, "dbname=");
			FUNC4(&connstr, FUNC2(result, i, 0));

			FUNC11(connstr.data, vacopts,
								ANALYZE_NO_STAGE,
								NULL,
								host, port, username, prompt_password,
								concurrentCons,
								progname, echo, quiet);
		}
	}
	FUNC10(&connstr);

	FUNC0(result);
}