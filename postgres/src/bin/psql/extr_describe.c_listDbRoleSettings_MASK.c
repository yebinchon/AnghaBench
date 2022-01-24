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
struct TYPE_12__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  quiet; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

bool
FUNC13(const char *pattern, const char *pattern2)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	bool		havewhere;

	if (pset.sversion < 90000)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support per-database role settings.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);

	FUNC10(&buf, "SELECT rolname AS \"%s\", datname AS \"%s\",\n"
					  "pg_catalog.array_to_string(setconfig, E'\\n') AS \"%s\"\n"
					  "FROM pg_catalog.pg_db_role_setting s\n"
					  "LEFT JOIN pg_catalog.pg_database d ON d.oid = setdatabase\n"
					  "LEFT JOIN pg_catalog.pg_roles r ON r.oid = setrole\n",
					  FUNC6("Role"),
					  FUNC6("Database"),
					  FUNC6("Settings"));
	havewhere = FUNC11(pset.db, &buf, pattern, false, false,
									  NULL, "r.rolname", NULL, NULL);
	FUNC11(pset.db, &buf, pattern2, havewhere, false,
						  NULL, "d.datname", NULL, NULL);
	FUNC4(&buf, "ORDER BY 1, 2;");

	res = FUNC2(buf.data);
	FUNC12(&buf);
	if (!res)
		return false;

	/*
	 * Most functions in this file are content to print an empty table when
	 * there are no matching objects.  We intentionally deviate from that
	 * here, but only in !quiet mode, because of the possibility that the user
	 * is confused about what the two pattern arguments mean.
	 */
	if (FUNC1(res) == 0 && !pset.quiet)
	{
		if (pattern && pattern2)
			FUNC8("Did not find any settings for role \"%s\" and database \"%s\".",
						 pattern, pattern2);
		else if (pattern)
			FUNC8("Did not find any settings for role \"%s\".",
						 pattern);
		else
			FUNC8("Did not find any settings.");
	}
	else
	{
		myopt.nullPrint = NULL;
		myopt.title = FUNC3("List of settings");
		myopt.translate_header = true;

		FUNC9(res, &myopt, pset.queryFout, false, pset.logfile);
	}

	FUNC0(res);
	return true;
}