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
 int /*<<< orphan*/  PG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 

void
FUNC21(ClusterInfo *cluster, bool check_mode)
{
	int			dbnum;
	FILE	   *script = NULL;
	bool		found = false;
	char	   *output_path = "reindex_hash.sql";

	FUNC16("Checking for hash indexes");

	for (dbnum = 0; dbnum < cluster->dbarr.ndbs; dbnum++)
	{
		PGresult   *res;
		bool		db_used = false;
		int			ntups;
		int			rowno;
		int			i_nspname,
					i_relname;
		DbInfo	   *active_db = &cluster->dbarr.dbs[dbnum];
		PGconn	   *conn = FUNC7(cluster, active_db->db_name);

		/* find hash indexes */
		res = FUNC8(conn,
								"SELECT n.nspname, c.relname "
								"FROM	pg_catalog.pg_class c, "
								"		pg_catalog.pg_index i, "
								"		pg_catalog.pg_am a, "
								"		pg_catalog.pg_namespace n "
								"WHERE	i.indexrelid = c.oid AND "
								"		c.relam = a.oid AND "
								"		c.relnamespace = n.oid AND "
								"		a.amname = 'hash'"
			);

		ntups = FUNC4(res);
		i_nspname = FUNC2(res, "nspname");
		i_relname = FUNC2(res, "relname");
		for (rowno = 0; rowno < ntups; rowno++)
		{
			found = true;
			if (!check_mode)
			{
				if (script == NULL && (script = FUNC10(output_path, "w")) == NULL)
					FUNC14("could not open file \"%s\": %s\n", output_path,
							 FUNC19(errno));
				if (!db_used)
				{
					PQExpBufferData connectbuf;

					FUNC13(&connectbuf);
					FUNC5(&connectbuf, active_db->db_name);
					FUNC12(connectbuf.data, script);
					FUNC20(&connectbuf);
					db_used = true;
				}
				FUNC11(script, "REINDEX INDEX %s.%s;\n",
						FUNC17(FUNC3(res, rowno, i_nspname)),
						FUNC17(FUNC3(res, rowno, i_relname)));
			}
		}

		FUNC0(res);

		if (!check_mode && db_used)
		{
			/* mark hash indexes as invalid */
			FUNC0(FUNC8(conn,
									  "UPDATE pg_catalog.pg_index i "
									  "SET	indisvalid = false "
									  "FROM	pg_catalog.pg_class c, "
									  "		pg_catalog.pg_am a, "
									  "		pg_catalog.pg_namespace n "
									  "WHERE	i.indexrelid = c.oid AND "
									  "		c.relam = a.oid AND "
									  "		c.relnamespace = n.oid AND "
									  "		a.amname = 'hash'"));
		}

		FUNC1(conn);
	}

	if (script)
		FUNC9(script);

	if (found)
	{
		FUNC18(PG_WARNING, "warning");
		if (check_mode)
			FUNC15(PG_WARNING, "\n"
				   "Your installation contains hash indexes.  These indexes have different\n"
				   "internal formats between your old and new clusters, so they must be\n"
				   "reindexed with the REINDEX command.  After upgrading, you will be given\n"
				   "REINDEX instructions.\n\n");
		else
			FUNC15(PG_WARNING, "\n"
				   "Your installation contains hash indexes.  These indexes have different\n"
				   "internal formats between your old and new clusters, so they must be\n"
				   "reindexed with the REINDEX command.  The file\n"
				   "    %s\n"
				   "when executed by psql by the database superuser will recreate all invalid\n"
				   "indexes; until then, none of these indexes will be used.\n\n",
				   output_path);
	}
	else
		FUNC6();
}