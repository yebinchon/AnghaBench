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
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

bool
FUNC12(const char *pattern)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;

	if (pset.sversion < 90100)
	{
		char		sverbuf[32];

		FUNC7("The server (version %s) does not support extensions.",
					 FUNC4(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC6(&buf);
	FUNC9(&buf,
					  "SELECT e.extname AS \"%s\", "
					  "e.extversion AS \"%s\", n.nspname AS \"%s\", c.description AS \"%s\"\n"
					  "FROM pg_catalog.pg_extension e "
					  "LEFT JOIN pg_catalog.pg_namespace n ON n.oid = e.extnamespace "
					  "LEFT JOIN pg_catalog.pg_description c ON c.objoid = e.oid "
					  "AND c.classoid = 'pg_catalog.pg_extension'::pg_catalog.regclass\n",
					  FUNC5("Name"),
					  FUNC5("Version"),
					  FUNC5("Schema"),
					  FUNC5("Description"));

	FUNC10(pset.db, &buf, pattern,
						  false, false,
						  NULL, "e.extname", NULL,
						  NULL);

	FUNC3(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of installed extensions");
	myopt.translate_header = true;

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}