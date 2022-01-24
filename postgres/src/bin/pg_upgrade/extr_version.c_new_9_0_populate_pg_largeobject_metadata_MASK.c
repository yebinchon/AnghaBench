#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  output_path ;
struct TYPE_10__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_13__ {TYPE_1__ dbarr; } ;
struct TYPE_12__ {int /*<<< orphan*/  db_name; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_3__ DbInfo ;
typedef  TYPE_4__ ClusterInfo ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 

void
FUNC21(ClusterInfo *cluster, bool check_mode)
{
	int			dbnum;
	FILE	   *script = NULL;
	bool		found = false;
	char		output_path[MAXPGPATH];

	FUNC16("Checking for large objects");

	FUNC18(output_path, sizeof(output_path), "pg_largeobject.sql");

	for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
	{
		PGresult   *res;
		int			i_count;
		DbInfo	   *active_db = &cluster->dbarr.dbs[dbnum];
		PGconn	   *conn = FUNC7(cluster, active_db->db_name);

		/* find if there are any large objects */
		res = FUNC8(conn,
								"SELECT count(*) "
								"FROM	pg_catalog.pg_largeobject ");

		i_count = FUNC2(res, "count");
		if (FUNC5(FUNC3(res, 0, i_count)) != 0)
		{
			found = true;
			if (!check_mode)
			{
				PQExpBufferData connectbuf;

				if (script == NULL && (script = FUNC10(output_path, "w")) == NULL)
					FUNC14("could not open file \"%s\": %s\n", output_path,
							 FUNC19(errno));

				FUNC13(&connectbuf);
				FUNC4(&connectbuf, active_db->db_name);
				FUNC12(connectbuf.data, script);
				FUNC20(&connectbuf);

				FUNC11(script,
						"SELECT pg_catalog.lo_create(t.loid)\n"
						"FROM (SELECT DISTINCT loid FROM pg_catalog.pg_largeobject) AS t;\n");
			}
		}

		FUNC0(res);
		FUNC1(conn);
	}

	if (script)
		FUNC9(script);

	if (found)
	{
		FUNC17(PG_WARNING, "warning");
		if (check_mode)
			FUNC15(PG_WARNING, "\n"
				   "Your installation contains large objects.  The new database has an\n"
				   "additional large object permission table.  After upgrading, you will be\n"
				   "given a command to populate the pg_largeobject_metadata table with\n"
				   "default permissions.\n\n");
		else
			FUNC15(PG_WARNING, "\n"
				   "Your installation contains large objects.  The new database has an\n"
				   "additional large object permission table, so default permissions must be\n"
				   "defined for all large objects.  The file\n"
				   "    %s\n"
				   "when executed by psql by the database superuser will set the default\n"
				   "permissions.\n\n",
				   output_path);
	}
	else
		FUNC6();
}