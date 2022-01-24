#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sql_file_name ;
typedef  int /*<<< orphan*/  log_file_name ;
struct TYPE_18__ {scalar_t__ verbose; } ;
struct TYPE_17__ {int /*<<< orphan*/  bindir; } ;
struct TYPE_13__ {int ndbs; TYPE_3__* dbs; } ;
struct TYPE_16__ {TYPE_1__ dbarr; } ;
struct TYPE_15__ {int /*<<< orphan*/  db_oid; int /*<<< orphan*/  db_name; } ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  TYPE_3__ DbInfo ;

/* Variables and functions */
 char* DB_DUMP_FILE_MASK ; 
 char* DB_DUMP_LOG_FILE_MASK ; 
 int /*<<< orphan*/  GLOBALS_DUMP_FILE ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_STATUS ; 
 int /*<<< orphan*/  UTILITY_LOG_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_7__ log_opts ; 
 TYPE_6__ new_cluster ; 
 TYPE_5__ old_cluster ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

void
FUNC14(void)
{
	int			dbnum;

	FUNC10("Creating dump of global objects");

	/* run new pg_dumpall binary for globals */
	FUNC6(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/pg_dumpall\" %s --globals-only --quote-all-identifiers "
			  "--binary-upgrade %s -f %s",
			  new_cluster.bindir, FUNC4(&old_cluster),
			  log_opts.verbose ? "--verbose" : "",
			  GLOBALS_DUMP_FILE);
	FUNC3();

	FUNC10("Creating dump of database schemas\n");

	/* create per-db dump files */
	for (dbnum = 0; dbnum < old_cluster.dbarr.ndbs; dbnum++)
	{
		char		sql_file_name[MAXPGPATH],
					log_file_name[MAXPGPATH];
		DbInfo	   *old_db = &old_cluster.dbarr.dbs[dbnum];
		PQExpBufferData connstr,
					escaped_connstr;

		FUNC7(&connstr);
		FUNC1(&connstr, "dbname=");
		FUNC0(&connstr, old_db->db_name);
		FUNC7(&escaped_connstr);
		FUNC2(&escaped_connstr, connstr.data);
		FUNC13(&connstr);

		FUNC9(PG_STATUS, "%s", old_db->db_name);
		FUNC12(sql_file_name, sizeof(sql_file_name), DB_DUMP_FILE_MASK, old_db->db_oid);
		FUNC12(log_file_name, sizeof(log_file_name), DB_DUMP_LOG_FILE_MASK, old_db->db_oid);

		FUNC8(log_file_name, NULL,
						   "\"%s/pg_dump\" %s --schema-only --quote-all-identifiers "
						   "--binary-upgrade --format=custom %s --file=\"%s\" %s",
						   new_cluster.bindir, FUNC4(&old_cluster),
						   log_opts.verbose ? "--verbose" : "",
						   sql_file_name, escaped_connstr.data);

		FUNC13(&escaped_connstr);
	}

	/* reap all children */
	while (FUNC11(true) == true)
		;

	FUNC5();
	FUNC3();
}