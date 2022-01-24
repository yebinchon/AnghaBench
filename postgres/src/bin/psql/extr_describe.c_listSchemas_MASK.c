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
struct TYPE_14__ {int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
					  "SELECT n.nspname AS \"%s\",\n"
					  "  pg_catalog.pg_get_userbyid(n.nspowner) AS \"%s\"",
					  FUNC5("Name"),
					  FUNC5("Owner"));

	if (verbose)
	{
		FUNC4(&buf, ",\n  ");
		FUNC7(&buf, "n.nspacl");
		FUNC3(&buf,
						  ",\n  pg_catalog.obj_description(n.oid, 'pg_namespace') AS \"%s\"",
						  FUNC5("Description"));
	}

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_namespace n\n");

	if (!showSystem && !pattern)
		FUNC4(&buf,
							 "WHERE n.nspname !~ '^pg_' AND n.nspname <> 'information_schema'\n");

	FUNC10(pset.db, &buf, pattern,
						  !showSystem && !pattern, false,
						  NULL, "n.nspname", NULL,
						  NULL);

	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of schemas");
	myopt.translate_header = true;

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}