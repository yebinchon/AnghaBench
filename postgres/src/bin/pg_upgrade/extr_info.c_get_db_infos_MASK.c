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
typedef  int /*<<< orphan*/  query ;
struct TYPE_6__ {int ndbs; TYPE_2__* dbs; } ;
struct TYPE_8__ {TYPE_1__ dbarr; int /*<<< orphan*/  major_version; } ;
struct TYPE_7__ {char* db_tablespace; void* db_ctype; void* db_collate; int /*<<< orphan*/  db_encoding; void* db_name; int /*<<< orphan*/  db_oid; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_2__ DbInfo ;
typedef  TYPE_3__ ClusterInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int QUERY_ALLOC ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC10 (int) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC13(ClusterInfo *cluster)
{
	PGconn	   *conn = FUNC8(cluster, "template1");
	PGresult   *res;
	int			ntups;
	int			tupnum;
	DbInfo	   *dbinfos;
	int			i_datname,
				i_oid,
				i_encoding,
				i_datcollate,
				i_datctype,
				i_spclocation;
	char		query[QUERY_ALLOC];

	FUNC12(query, sizeof(query),
			 "SELECT d.oid, d.datname, d.encoding, d.datcollate, d.datctype, "
			 "%s AS spclocation "
			 "FROM pg_catalog.pg_database d "
			 " LEFT OUTER JOIN pg_catalog.pg_tablespace t "
			 " ON d.dattablespace = t.oid "
			 "WHERE d.datallowconn = true "
	/* we don't preserve pg_database.oid so we sort by name */
			 "ORDER BY 2",
	/* 9.2 removed the spclocation column */
			 (FUNC0(cluster->major_version) <= 901) ?
			 "t.spclocation" : "pg_catalog.pg_tablespace_location(t.oid)");

	res = FUNC9(conn, "%s", query);

	i_oid = FUNC3(res, "oid");
	i_datname = FUNC3(res, "datname");
	i_encoding = FUNC3(res, "encoding");
	i_datcollate = FUNC3(res, "datcollate");
	i_datctype = FUNC3(res, "datctype");
	i_spclocation = FUNC3(res, "spclocation");

	ntups = FUNC5(res);
	dbinfos = (DbInfo *) FUNC10(sizeof(DbInfo) * ntups);

	for (tupnum = 0; tupnum < ntups; tupnum++)
	{
		dbinfos[tupnum].db_oid = FUNC7(FUNC4(res, tupnum, i_oid));
		dbinfos[tupnum].db_name = FUNC11(FUNC4(res, tupnum, i_datname));
		dbinfos[tupnum].db_encoding = FUNC6(FUNC4(res, tupnum, i_encoding));
		dbinfos[tupnum].db_collate = FUNC11(FUNC4(res, tupnum, i_datcollate));
		dbinfos[tupnum].db_ctype = FUNC11(FUNC4(res, tupnum, i_datctype));
		FUNC12(dbinfos[tupnum].db_tablespace, sizeof(dbinfos[tupnum].db_tablespace), "%s",
				 FUNC4(res, tupnum, i_spclocation));
	}
	FUNC1(res);

	FUNC2(conn);

	cluster->dbarr.dbs = dbinfos;
	cluster->dbarr.ndbs = ntups;
}