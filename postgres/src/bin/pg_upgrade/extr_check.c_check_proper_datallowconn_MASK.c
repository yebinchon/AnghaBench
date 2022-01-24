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
typedef  int /*<<< orphan*/  ClusterInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(ClusterInfo *cluster)
{
	int			dbnum;
	PGconn	   *conn_template1;
	PGresult   *dbres;
	int			ntups;
	int			i_datname;
	int			i_datallowconn;

	FUNC9("Checking database connection settings");

	conn_template1 = FUNC6(cluster, "template1");

	/* get database names */
	dbres = FUNC7(conn_template1,
							  "SELECT	datname, datallowconn "
							  "FROM	pg_catalog.pg_database");

	i_datname = FUNC2(dbres, "datname");
	i_datallowconn = FUNC2(dbres, "datallowconn");

	ntups = FUNC4(dbres);
	for (dbnum = 0; dbnum < ntups; dbnum++)
	{
		char	   *datname = FUNC3(dbres, dbnum, i_datname);
		char	   *datallowconn = FUNC3(dbres, dbnum, i_datallowconn);

		if (FUNC10(datname, "template0") == 0)
		{
			/* avoid restore failure when pg_dumpall tries to create template0 */
			if (FUNC10(datallowconn, "t") == 0)
				FUNC8("template0 must not allow connections, "
						 "i.e. its pg_database.datallowconn must be false\n");
		}
		else
		{
			/*
			 * avoid datallowconn == false databases from being skipped on
			 * restore
			 */
			if (FUNC10(datallowconn, "f") == 0)
				FUNC8("All non-template0 databases must allow connections, "
						 "i.e. their pg_database.datallowconn must be true\n");
		}
	}

	FUNC0(dbres);

	FUNC1(conn_template1);

	FUNC5();
}