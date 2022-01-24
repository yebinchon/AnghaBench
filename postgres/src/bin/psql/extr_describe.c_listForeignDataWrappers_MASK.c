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
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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

		FUNC8("The server (version %s) does not support foreign-data wrappers.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);
	FUNC11(&buf,
					  "SELECT fdw.fdwname AS \"%s\",\n"
					  "  pg_catalog.pg_get_userbyid(fdw.fdwowner) AS \"%s\",\n",
					  FUNC6("Name"),
					  FUNC6("Owner"));
	if (pset.sversion >= 90100)
		FUNC3(&buf,
						  "  fdw.fdwhandler::pg_catalog.regproc AS \"%s\",\n",
						  FUNC6("Handler"));
	FUNC3(&buf,
					  "  fdw.fdwvalidator::pg_catalog.regproc AS \"%s\"",
					  FUNC6("Validator"));

	if (verbose)
	{
		FUNC4(&buf, ",\n  ");
		FUNC9(&buf, "fdwacl");
		FUNC3(&buf,
						  ",\n CASE WHEN fdwoptions IS NULL THEN '' ELSE "
						  "  '(' || pg_catalog.array_to_string(ARRAY(SELECT "
						  "  pg_catalog.quote_ident(option_name) ||  ' ' || "
						  "  pg_catalog.quote_literal(option_value)  FROM "
						  "  pg_catalog.pg_options_to_table(fdwoptions)),  ', ') || ')' "
						  "  END AS \"%s\"",
						  FUNC6("FDW options"));

		if (pset.sversion >= 90100)
			FUNC3(&buf,
							  ",\n  d.description AS \"%s\" ",
							  FUNC6("Description"));
	}

	FUNC4(&buf, "\nFROM pg_catalog.pg_foreign_data_wrapper fdw\n");

	if (verbose && pset.sversion >= 90100)
		FUNC4(&buf,
							 "LEFT JOIN pg_catalog.pg_description d\n"
							 "       ON d.classoid = fdw.tableoid "
							 "AND d.objoid = fdw.oid AND d.objsubid = 0\n");

	FUNC12(pset.db, &buf, pattern, false, false,
						  NULL, "fdwname", NULL, NULL);

	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC13(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of foreign-data wrappers");
	myopt.translate_header = true;

	FUNC10(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}