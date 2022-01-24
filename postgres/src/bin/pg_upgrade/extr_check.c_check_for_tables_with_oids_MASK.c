#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  output_path ;
struct TYPE_6__ {int ndbs; TYPE_2__* dbs; } ;
struct TYPE_8__ {TYPE_1__ dbarr; } ;
struct TYPE_7__ {char* db_name; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ DbInfo ;
typedef  TYPE_3__ ClusterInfo ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(ClusterInfo *cluster)
{
	int			dbnum;
	FILE	   *script = NULL;
	bool		found = false;
	char		output_path[MAXPGPATH];

	FUNC13("Checking for tables WITH OIDS");

	FUNC14(output_path, sizeof(output_path),
			 "tables_with_oids.txt");

	/* Find any tables declared WITH OIDS */
	for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
	{
		PGresult   *res;
		bool		db_used = false;
		int			ntups;
		int			rowno;
		int			i_nspname,
					i_relname;
		DbInfo	   *active_db = &cluster->dbarr.dbs[dbnum];
		PGconn	   *conn = FUNC6(cluster, active_db->db_name);

		res = FUNC7(conn,
								"SELECT n.nspname, c.relname "
								"FROM	pg_catalog.pg_class c, "
								"		pg_catalog.pg_namespace n "
								"WHERE	c.relnamespace = n.oid AND "
								"		c.relhasoids AND"
								"       n.nspname NOT IN ('pg_catalog')");

		ntups = FUNC4(res);
		i_nspname = FUNC2(res, "nspname");
		i_relname = FUNC2(res, "relname");
		for (rowno = 0; rowno < ntups; rowno++)
		{
			found = true;
			if (script == NULL && (script = FUNC9(output_path, "w")) == NULL)
				FUNC11("could not open file \"%s\": %s\n",
						 output_path, FUNC15(errno));
			if (!db_used)
			{
				FUNC10(script, "In database: %s\n", active_db->db_name);
				db_used = true;
			}
			FUNC10(script, "  %s.%s\n",
					FUNC3(res, rowno, i_nspname),
					FUNC3(res, rowno, i_relname));
		}

		FUNC0(res);

		FUNC1(conn);
	}

	if (script)
		FUNC8(script);

	if (found)
	{
		FUNC12(PG_REPORT, "fatal\n");
		FUNC11("Your installation contains tables declared WITH OIDS, which is not supported\n"
				 "anymore. Consider removing the oid column using\n"
				 "    ALTER TABLE ... SET WITHOUT OIDS;\n"
				 "A list of tables with the problem is in the file:\n"
				 "    %s\n\n", output_path);
	}
	else
		FUNC5();
}