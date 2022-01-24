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
struct TYPE_11__ {int translate_header; int const* translate_columns; int /*<<< orphan*/  n_translate_columns; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
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
 int /*<<< orphan*/  FUNC8 (int const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool
FUNC14(const char *pattern, bool verbose)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] = {false, false, false, false,
	false, false};

	if (pset.sversion < 100000)
	{
		char		sverbuf[32];

		FUNC9("The server (version %s) does not support subscriptions.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);

	FUNC11(&buf,
					  "SELECT subname AS \"%s\"\n"
					  ",  pg_catalog.pg_get_userbyid(subowner) AS \"%s\"\n"
					  ",  subenabled AS \"%s\"\n"
					  ",  subpublications AS \"%s\"\n",
					  FUNC6("Name"),
					  FUNC6("Owner"),
					  FUNC6("Enabled"),
					  FUNC6("Publication"));

	if (verbose)
	{
		FUNC3(&buf,
						  ",  subsynccommit AS \"%s\"\n"
						  ",  subconninfo AS \"%s\"\n",
						  FUNC6("Synchronous commit"),
						  FUNC6("Conninfo"));
	}

	/* Only display subscriptions in current database. */
	FUNC4(&buf,
						 "FROM pg_catalog.pg_subscription\n"
						 "WHERE subdbid = (SELECT oid\n"
						 "                 FROM pg_catalog.pg_database\n"
						 "                 WHERE datname = pg_catalog.current_database())");

	FUNC12(pset.db, &buf, pattern, true, false,
						  NULL, "subname", NULL,
						  NULL);

	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC1(buf.data);
	FUNC13(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of subscriptions");
	myopt.translate_header = true;
	myopt.translate_columns = translate_columns;
	myopt.n_translate_columns = FUNC8(translate_columns);

	FUNC10(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}