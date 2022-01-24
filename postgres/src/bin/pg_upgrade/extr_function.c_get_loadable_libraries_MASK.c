#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_11__ {TYPE_1__ dbarr; int /*<<< orphan*/  major_version; } ;
struct TYPE_10__ {int num_libraries; TYPE_2__* libraries; } ;
struct TYPE_9__ {int /*<<< orphan*/  db_name; } ;
struct TYPE_8__ {int dbnum; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_2__ LibraryInfo ;
typedef  TYPE_3__ DbInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ClanguageId ; 
 int /*<<< orphan*/  FirstNormalObjectId ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ old_cluster ; 
 TYPE_4__ os_info ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void
FUNC12(void)
{
	PGresult  **ress;
	int			totaltups;
	int			dbnum;
	bool		found_public_plpython_handler = false;

	ress = (PGresult **) FUNC10(old_cluster.dbarr.ndbs * sizeof(PGresult *));
	totaltups = 0;

	/* Fetch all library names, removing duplicates within each DB */
	for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
	{
		DbInfo	   *active_db = &old_cluster.dbarr.dbs[dbnum];
		PGconn	   *conn = FUNC5(&old_cluster, active_db->db_name);

		/*
		 * Fetch all libraries containing non-built-in C functions in this DB.
		 */
		ress[dbnum] = FUNC6(conn,
										"SELECT DISTINCT probin "
										"FROM pg_catalog.pg_proc "
										"WHERE prolang = %u AND "
										"probin IS NOT NULL AND "
										"oid >= %u;",
										ClanguageId,
										FirstNormalObjectId);
		totaltups += FUNC4(ress[dbnum]);

		/*
		 * Systems that install plpython before 8.1 have
		 * plpython_call_handler() defined in the "public" schema, causing
		 * pg_dump to dump it.  However that function still references
		 * "plpython" (no "2"), so it throws an error on restore.  This code
		 * checks for the problem function, reports affected databases to the
		 * user and explains how to remove them. 8.1 git commit:
		 * e0dedd0559f005d60c69c9772163e69c204bac69
		 * http://archives.postgresql.org/pgsql-hackers/2012-03/msg01101.php
		 * http://archives.postgresql.org/pgsql-bugs/2012-05/msg00206.php
		 */
		if (FUNC0(old_cluster.major_version) < 901)
		{
			PGresult   *res;

			res = FUNC6(conn,
									"SELECT 1 "
									"FROM pg_catalog.pg_proc p "
									"    JOIN pg_catalog.pg_namespace n "
									"    ON pronamespace = n.oid "
									"WHERE proname = 'plpython_call_handler' AND "
									"nspname = 'public' AND "
									"prolang = %u AND "
									"probin = '$libdir/plpython' AND "
									"p.oid >= %u;",
									ClanguageId,
									FirstNormalObjectId);
			if (FUNC4(res) > 0)
			{
				if (!found_public_plpython_handler)
				{
					FUNC9(PG_WARNING,
						   "\nThe old cluster has a \"plpython_call_handler\" function defined\n"
						   "in the \"public\" schema which is a duplicate of the one defined\n"
						   "in the \"pg_catalog\" schema.  You can confirm this by executing\n"
						   "in psql:\n"
						   "\n"
						   "    \\df *.plpython_call_handler\n"
						   "\n"
						   "The \"public\" schema version of this function was created by a\n"
						   "pre-8.1 install of plpython, and must be removed for pg_upgrade\n"
						   "to complete because it references a now-obsolete \"plpython\"\n"
						   "shared object file.  You can remove the \"public\" schema version\n"
						   "of this function by running the following command:\n"
						   "\n"
						   "    DROP FUNCTION public.plpython_call_handler()\n"
						   "\n"
						   "in each affected database:\n"
						   "\n");
				}
				FUNC9(PG_WARNING, "    %s\n", active_db->db_name);
				found_public_plpython_handler = true;
			}
			FUNC1(res);
		}

		FUNC2(conn);
	}

	if (found_public_plpython_handler)
		FUNC7("Remove the problem functions from the old cluster to continue.\n");

	os_info.libraries = (LibraryInfo *) FUNC10(totaltups * sizeof(LibraryInfo));
	totaltups = 0;

	for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
	{
		PGresult   *res = ress[dbnum];
		int			ntups;
		int			rowno;

		ntups = FUNC4(res);
		for (rowno = 0; rowno < ntups; rowno++)
		{
			char	   *lib = FUNC3(res, rowno, 0);

			os_info.libraries[totaltups].name = FUNC11(lib);
			os_info.libraries[totaltups].dbnum = dbnum;

			totaltups++;
		}
		FUNC1(res);
	}

	FUNC8(ress);

	os_info.num_libraries = totaltups;
}