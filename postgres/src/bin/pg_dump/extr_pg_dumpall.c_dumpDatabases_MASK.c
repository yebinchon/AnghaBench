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
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  PG_BINARY_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  database_exclude_names ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ output_clean ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(PGconn *conn)
{
	PGresult   *res;
	int			i;

	/*
	 * Skip databases marked not datallowconn, since we'd be unable to connect
	 * to them anyway.  This must agree with dropDBs().
	 *
	 * We arrange for template1 to be processed first, then we process other
	 * DBs in alphabetical order.  If we just did them all alphabetically, we
	 * might find ourselves trying to drop the "postgres" database while still
	 * connected to it.  This makes trying to run the restore script while
	 * connected to "template1" a bad idea, but there's no fixed order that
	 * doesn't have some failure mode with --clean.
	 */
	res = FUNC3(conn,
					   "SELECT datname "
					   "FROM pg_database d "
					   "WHERE datallowconn "
					   "ORDER BY (datname <> 'template1'), datname");

	if (FUNC2(res) > 0)
		FUNC7(OPF, "--\n-- Databases\n--\n\n");

	for (i = 0; i < FUNC2(res); i++)
	{
		char	   *dbname = FUNC1(res, i, 0);
		const char *create_opts;
		int			ret;

		/* Skip template0, even if it's not marked !datallowconn. */
		if (FUNC12(dbname, "template0") == 0)
			continue;

		/* Skip any explicitly excluded database */
		if (FUNC11(&database_exclude_names, dbname))
		{
			FUNC9("excluding database \"%s\"", dbname);
			continue;
		}

		FUNC9("dumping database \"%s\"", dbname);

		FUNC7(OPF, "--\n-- Database \"%s\" dump\n--\n\n", dbname);

		/*
		 * We assume that "template1" and "postgres" already exist in the
		 * target installation.  dropDBs() won't have removed them, for fear
		 * of removing the DB the restore script is initially connected to. If
		 * --clean was specified, tell pg_dump to drop and recreate them;
		 * otherwise we'll merely restore their contents.  Other databases
		 * should simply be created.
		 */
		if (FUNC12(dbname, "template1") == 0 || FUNC12(dbname, "postgres") == 0)
		{
			if (output_clean)
				create_opts = "--clean --create";
			else
			{
				create_opts = "";
				/* Since pg_dump won't emit a \connect command, we must */
				FUNC7(OPF, "\\connect %s\n\n", dbname);
			}
		}
		else
			create_opts = "--create";

		if (filename)
			FUNC5(OPF);

		ret = FUNC10(dbname, create_opts);
		if (ret != 0)
		{
			FUNC8("pg_dump failed on database \"%s\", exiting", dbname);
			FUNC4(1);
		}

		if (filename)
		{
			OPF = FUNC6(filename, PG_BINARY_A);
			if (!OPF)
			{
				FUNC8("could not re-open the output file \"%s\": %m",
							 filename);
				FUNC4(1);
			}
		}

	}

	FUNC0(res);
}