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
typedef  int Oid ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC15(int argc, char **argv)
{
	char	   *in_filename,
			   *out_filename;
	char	   *database;
	Oid			lobjOid;
	PGconn	   *conn;
	PGresult   *res;

	if (argc != 4)
	{
		FUNC9(stderr, "Usage: %s database_name in_filename out_filename\n",
				argv[0]);
		FUNC7(1);
	}

	database = argv[1];
	in_filename = argv[2];
	out_filename = argv[3];

	/*
	 * set up the connection
	 */
	conn = FUNC5(NULL, NULL, NULL, NULL, database);

	/* check to see that the backend connection was successfully made */
	if (FUNC6(conn) != CONNECTION_OK)
	{
		FUNC9(stderr, "Connection to database failed: %s",
				FUNC1(conn));
		FUNC8(conn);
	}

	/* Set always-secure search path, so malicious users can't take control. */
	res = FUNC2(conn,
				 "SELECT pg_catalog.set_config('search_path', '', false)");
	if (FUNC4(res) != PGRES_TUPLES_OK)
	{
		FUNC9(stderr, "SET failed: %s", FUNC1(conn));
		FUNC0(res);
		FUNC8(conn);
	}
	FUNC0(res);

	res = FUNC2(conn, "begin");
	FUNC0(res);
	FUNC14("importing file \"%s\" ...\n", in_filename);
/*	lobjOid = importFile(conn, in_filename); */
	lobjOid = FUNC11(conn, in_filename);
	if (lobjOid == 0)
		FUNC9(stderr, "%s\n", FUNC1(conn));
	else
	{
		FUNC14("\tas large object %u.\n", lobjOid);

		FUNC14("picking out bytes 1000-2000 of the large object\n");
		FUNC13(conn, lobjOid, 1000, 1000);

		FUNC14("overwriting bytes 1000-2000 of the large object with X's\n");
		FUNC12(conn, lobjOid, 1000, 1000);

		FUNC14("exporting large object to file \"%s\" ...\n", out_filename);
/*		exportFile(conn, lobjOid, out_filename); */
		if (FUNC10(conn, lobjOid, out_filename) < 0)
			FUNC9(stderr, "%s\n", FUNC1(conn));
	}

	res = FUNC2(conn, "end");
	FUNC0(res);
	FUNC3(conn);
	return 0;
}