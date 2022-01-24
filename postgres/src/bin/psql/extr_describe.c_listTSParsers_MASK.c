#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
struct TYPE_10__ {int translate_header; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_12__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (char const*) ; 
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

	if (pset.sversion < 80300)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support full text search.",
					 FUNC4(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	if (verbose)
		return FUNC7(pattern);

	FUNC6(&buf);

	FUNC10(&buf,
					  "SELECT\n"
					  "  n.nspname as \"%s\",\n"
					  "  p.prsname as \"%s\",\n"
					  "  pg_catalog.obj_description(p.oid, 'pg_ts_parser') as \"%s\"\n"
					  "FROM pg_catalog.pg_ts_parser p\n"
					  "LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.prsnamespace\n",
					  FUNC5("Schema"),
					  FUNC5("Name"),
					  FUNC5("Description")
		);

	FUNC11(pset.db, &buf, pattern, false, false,
						  "n.nspname", "p.prsname", NULL,
						  "pg_catalog.pg_ts_parser_is_visible(p.oid)");

	FUNC3(&buf, "ORDER BY 1, 2;");

	res = FUNC1(buf.data);
	FUNC12(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of text search parsers");
	myopt.translate_header = true;

	FUNC9(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}