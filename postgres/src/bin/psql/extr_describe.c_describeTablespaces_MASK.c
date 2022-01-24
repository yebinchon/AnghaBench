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

	if (pset.sversion < 80000)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support tablespaces.",
					FUNC5(pset.sversion, false,
										  sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);

	if (pset.sversion >= 90200)
		FUNC11(&buf,
						  "SELECT spcname AS \"%s\",\n"
						  "  pg_catalog.pg_get_userbyid(spcowner) AS \"%s\",\n"
						  "  pg_catalog.pg_tablespace_location(oid) AS \"%s\"",
						  FUNC6("Name"),
						  FUNC6("Owner"),
						  FUNC6("Location"));
	else
		FUNC11(&buf,
						  "SELECT spcname AS \"%s\",\n"
						  "  pg_catalog.pg_get_userbyid(spcowner) AS \"%s\",\n"
						  "  spclocation AS \"%s\"",
						  FUNC6("Name"),
						  FUNC6("Owner"),
						  FUNC6("Location"));

	if (verbose)
	{
		FUNC4(&buf, ",\n  ");
		FUNC9(&buf, "spcacl");
	}

	if (verbose && pset.sversion >= 90000)
		FUNC3(&buf,
						  ",\n  spcoptions AS \"%s\"",
						  FUNC6("Options"));

	if (verbose && pset.sversion >= 90200)
		FUNC3(&buf,
						  ",\n  pg_catalog.pg_size_pretty(pg_catalog.pg_tablespace_size(oid)) AS \"%s\"",
						  FUNC6("Size"));

	if (verbose && pset.sversion >= 80200)
		FUNC3(&buf,
						  ",\n  pg_catalog.shobj_description(oid, 'pg_tablespace') AS \"%s\"",
						  FUNC6("Description"));

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_tablespace\n");

	FUNC12(pset.db, &buf, pattern, false, false,
						  NULL, "spcname", NULL,
						  NULL);

	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC13(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of tablespaces");
	myopt.translate_header = true;

	FUNC10(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}