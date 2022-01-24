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
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
struct TYPE_11__ {int translate_header; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

bool
FUNC13(const char *pattern, bool verbose)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;

	if (pset.sversion < 90100)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support foreign tables.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);
	FUNC10(&buf,
					  "SELECT n.nspname AS \"%s\",\n"
					  "  c.relname AS \"%s\",\n"
					  "  s.srvname AS \"%s\"",
					  FUNC6("Schema"),
					  FUNC6("Table"),
					  FUNC6("Server"));

	if (verbose)
		FUNC3(&buf,
						  ",\n CASE WHEN ftoptions IS NULL THEN '' ELSE "
						  "  '(' || pg_catalog.array_to_string(ARRAY(SELECT "
						  "  pg_catalog.quote_ident(option_name) ||  ' ' || "
						  "  pg_catalog.quote_literal(option_value)  FROM "
						  "  pg_catalog.pg_options_to_table(ftoptions)),  ', ') || ')' "
						  "  END AS \"%s\",\n"
						  "  d.description AS \"%s\"",
						  FUNC6("FDW options"),
						  FUNC6("Description"));

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_foreign_table ft\n"
						 "  INNER JOIN pg_catalog.pg_class c"
						 " ON c.oid = ft.ftrelid\n"
						 "  INNER JOIN pg_catalog.pg_namespace n"
						 " ON n.oid = c.relnamespace\n"
						 "  INNER JOIN pg_catalog.pg_foreign_server s"
						 " ON s.oid = ft.ftserver\n");
	if (verbose)
		FUNC4(&buf,
							 "   LEFT JOIN pg_catalog.pg_description d\n"
							 "          ON d.classoid = c.tableoid AND "
							 "d.objoid = c.oid AND d.objsubid = 0\n");

	FUNC11(pset.db, &buf, pattern, false, false,
						  "n.nspname", "c.relname", NULL,
						  "pg_catalog.pg_table_is_visible(c.oid)");

	FUNC4(&buf, "ORDER BY 1, 2;");

	res = FUNC1(buf.data);
	FUNC12(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of foreign tables");
	myopt.translate_header = true;

	FUNC9(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}