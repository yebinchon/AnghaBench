#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
struct TYPE_12__ {int translate_header; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool
FUNC14(const char *pattern, bool verbose)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;

	if (pset.sversion < 80400)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support foreign servers.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);
	FUNC11(&buf,
					  "SELECT s.srvname AS \"%s\",\n"
					  "  pg_catalog.pg_get_userbyid(s.srvowner) AS \"%s\",\n"
					  "  f.fdwname AS \"%s\"",
					  FUNC6("Name"),
					  FUNC6("Owner"),
					  FUNC6("Foreign-data wrapper"));

	if (verbose)
	{
		FUNC4(&buf, ",\n  ");
		FUNC9(&buf, "s.srvacl");
		FUNC3(&buf,
						  ",\n"
						  "  s.srvtype AS \"%s\",\n"
						  "  s.srvversion AS \"%s\",\n"
						  "  CASE WHEN srvoptions IS NULL THEN '' ELSE "
						  "  '(' || pg_catalog.array_to_string(ARRAY(SELECT "
						  "  pg_catalog.quote_ident(option_name) ||  ' ' || "
						  "  pg_catalog.quote_literal(option_value)  FROM "
						  "  pg_catalog.pg_options_to_table(srvoptions)),  ', ') || ')' "
						  "  END AS \"%s\",\n"
						  "  d.description AS \"%s\"",
						  FUNC6("Type"),
						  FUNC6("Version"),
						  FUNC6("FDW options"),
						  FUNC6("Description"));
	}

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_foreign_server s\n"
						 "     JOIN pg_catalog.pg_foreign_data_wrapper f ON f.oid=s.srvfdw\n");

	if (verbose)
		FUNC4(&buf,
							 "LEFT JOIN pg_catalog.pg_description d\n       "
							 "ON d.classoid = s.tableoid AND d.objoid = s.oid "
							 "AND d.objsubid = 0\n");

	FUNC12(pset.db, &buf, pattern, false, false,
						  NULL, "s.srvname", NULL, NULL);

	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC13(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of foreign servers");
	myopt.translate_header = true;

	FUNC10(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}