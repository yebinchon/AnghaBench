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
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  ClusterInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  PG_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

PGconn *
FUNC10(ClusterInfo *cluster, const char *db_name)
{
	PGconn	   *conn = FUNC7(cluster, db_name);

	if (conn == NULL || FUNC3(conn) != CONNECTION_OK)
	{
		FUNC8(PG_REPORT, "connection to database failed: %s",
			   FUNC1(conn));

		if (conn)
			FUNC2(conn);

		FUNC9(FUNC4("Failure, exiting\n"));
		FUNC6(1);
	}

	FUNC0(FUNC5(conn, ALWAYS_SECURE_SEARCH_PATH_SQL));

	return conn;
}