#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char const* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ ,char**,char const**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

void
FUNC17(PQExpBuffer buf, const char *spec,
						PGconn *conn, bool echo)
{
	char	   *table;
	const char *columns;
	PQExpBufferData sql;
	PGresult   *res;
	int			ntups;

	FUNC15(spec, FUNC1(conn), &table, &columns);

	/*
	 * Query must remain ABSOLUTELY devoid of unqualified names.  This would
	 * be unnecessary given a regclassin() variant taking a search_path
	 * argument.
	 */
	FUNC11(&sql);
	FUNC5(&sql,
						 "SELECT c.relname, ns.nspname\n"
						 " FROM pg_catalog.pg_class c,"
						 " pg_catalog.pg_namespace ns\n"
						 " WHERE c.relnamespace OPERATOR(pg_catalog.=) ns.oid\n"
						 "  AND c.oid OPERATOR(pg_catalog.=) ");
	FUNC6(&sql, table, conn);
	FUNC5(&sql, "::pg_catalog.regclass;");

	FUNC7(conn, "RESET search_path;", echo);

	/*
	 * One row is a typical result, as is a nonexistent relation ERROR.
	 * regclassin() unconditionally accepts all-digits input as an OID; if no
	 * relation has that OID; this query returns no rows.  Catalog corruption
	 * might elicit other row counts.
	 */
	res = FUNC8(conn, sql.data, echo);
	ntups = FUNC4(res);
	if (ntups != 1)
	{
		FUNC14(FUNC12("query returned %d row instead of one: %s",
							  "query returned %d rows instead of one: %s",
							  ntups),
					 ntups, sql.data);
		FUNC2(conn);
		FUNC9(1);
	}
	FUNC5(buf,
						 FUNC10(FUNC3(res, 0, 1),
										FUNC3(res, 0, 0)));
	FUNC5(buf, columns);
	FUNC0(res);
	FUNC16(&sql);
	FUNC13(table);

	FUNC0(FUNC8(conn, ALWAYS_SECURE_SEARCH_PATH_SQL, echo));
}