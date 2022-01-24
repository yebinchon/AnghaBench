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
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

bool
FUNC12(const char *pattern, bool verbose, bool showSystem)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;

	FUNC6(&buf);

	FUNC9(&buf,
					  "SELECT l.lanname AS \"%s\",\n",
					  FUNC5("Name"));
	if (pset.sversion >= 80300)
		FUNC3(&buf,
						  "       pg_catalog.pg_get_userbyid(l.lanowner) as \"%s\",\n",
						  FUNC5("Owner"));

	FUNC3(&buf,
					  "       l.lanpltrusted AS \"%s\"",
					  FUNC5("Trusted"));

	if (verbose)
	{
		FUNC3(&buf,
						  ",\n       NOT l.lanispl AS \"%s\",\n"
						  "       l.lanplcallfoid::pg_catalog.regprocedure AS \"%s\",\n"
						  "       l.lanvalidator::pg_catalog.regprocedure AS \"%s\",\n       ",
						  FUNC5("Internal language"),
						  FUNC5("Call handler"),
						  FUNC5("Validator"));
		if (pset.sversion >= 90000)
			FUNC3(&buf, "l.laninline::pg_catalog.regprocedure AS \"%s\",\n       ",
							  FUNC5("Inline handler"));
		FUNC7(&buf, "l.lanacl");
	}

	FUNC3(&buf,
					  ",\n       d.description AS \"%s\""
					  "\nFROM pg_catalog.pg_language l\n"
					  "LEFT JOIN pg_catalog.pg_description d\n"
					  "  ON d.classoid = l.tableoid AND d.objoid = l.oid\n"
					  "  AND d.objsubid = 0\n",
					  FUNC5("Description"));

	if (pattern)
		FUNC10(pset.db, &buf, pattern, false, false,
							  NULL, "l.lanname", NULL, NULL);

	if (!showSystem && !pattern)
		FUNC4(&buf, "WHERE l.lanplcallfoid != 0\n");


	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of languages");
	myopt.translate_header = true;

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}