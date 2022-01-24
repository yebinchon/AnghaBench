#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
typedef  int /*<<< orphan*/  printTableOpt ;
typedef  int /*<<< orphan*/  printTableContent ;
struct TYPE_9__ {int /*<<< orphan*/  topt; } ;
struct TYPE_11__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; TYPE_1__ popt; int /*<<< orphan*/  quiet; int /*<<< orphan*/  db; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

bool
FUNC20(const char *pattern)
{
	PQExpBufferData buf;
	int			i;
	PGresult   *res;
	bool		has_pubtruncate;

	if (pset.sversion < 100000)
	{
		char		sverbuf[32];

		FUNC9("The server (version %s) does not support publications.",
					 FUNC6(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	has_pubtruncate = (pset.sversion >= 110000);

	FUNC8(&buf);

	FUNC16(&buf,
					  "SELECT oid, pubname,\n"
					  "  pg_catalog.pg_get_userbyid(pubowner) AS owner,\n"
					  "  puballtables, pubinsert, pubupdate, pubdelete");
	if (has_pubtruncate)
		FUNC5(&buf,
							 ", pubtruncate");
	FUNC5(&buf,
						 "\nFROM pg_catalog.pg_publication\n");

	FUNC17(pset.db, &buf, pattern, false, false,
						  NULL, "pubname", NULL,
						  NULL);

	FUNC5(&buf, "ORDER BY 2;");

	res = FUNC3(buf.data);
	if (!res)
	{
		FUNC19(&buf);
		return false;
	}

	if (FUNC2(res) == 0)
	{
		if (!pset.quiet)
		{
			if (pattern)
				FUNC9("Did not find any publication named \"%s\".",
							 pattern);
			else
				FUNC9("Did not find any publications.");
		}

		FUNC19(&buf);
		FUNC0(res);
		return false;
	}

	for (i = 0; i < FUNC2(res); i++)
	{
		const char	align = 'l';
		int			ncols = 5;
		int			nrows = 1;
		int			tables = 0;
		PGresult   *tabres;
		char	   *pubid = FUNC1(res, i, 0);
		char	   *pubname = FUNC1(res, i, 1);
		bool		puballtables = FUNC18(FUNC1(res, i, 3), "t") == 0;
		int			j;
		PQExpBufferData title;
		printTableOpt myopt = pset.popt.topt;
		printTableContent cont;

		if (has_pubtruncate)
			ncols++;

		FUNC8(&title);
		FUNC16(&title, FUNC4("Publication %s"), pubname);
		FUNC15(&cont, &myopt, title.data, ncols, nrows);

		FUNC13(&cont, FUNC7("Owner"), true, align);
		FUNC13(&cont, FUNC7("All tables"), true, align);
		FUNC13(&cont, FUNC7("Inserts"), true, align);
		FUNC13(&cont, FUNC7("Updates"), true, align);
		FUNC13(&cont, FUNC7("Deletes"), true, align);
		if (has_pubtruncate)
			FUNC13(&cont, FUNC7("Truncates"), true, align);

		FUNC11(&cont, FUNC1(res, i, 2), false, false);
		FUNC11(&cont, FUNC1(res, i, 3), false, false);
		FUNC11(&cont, FUNC1(res, i, 4), false, false);
		FUNC11(&cont, FUNC1(res, i, 5), false, false);
		FUNC11(&cont, FUNC1(res, i, 6), false, false);
		if (has_pubtruncate)
			FUNC11(&cont, FUNC1(res, i, 7), false, false);

		if (!puballtables)
		{
			FUNC16(&buf,
							  "SELECT n.nspname, c.relname\n"
							  "FROM pg_catalog.pg_class c,\n"
							  "     pg_catalog.pg_namespace n,\n"
							  "     pg_catalog.pg_publication_rel pr\n"
							  "WHERE c.relnamespace = n.oid\n"
							  "  AND c.oid = pr.prrelid\n"
							  "  AND pr.prpubid = '%s'\n"
							  "ORDER BY 1,2", pubid);

			tabres = FUNC3(buf.data);
			if (!tabres)
			{
				FUNC14(&cont);
				FUNC0(res);
				FUNC19(&buf);
				FUNC19(&title);
				return false;
			}
			else
				tables = FUNC2(tabres);

			if (tables > 0)
				FUNC12(&cont, FUNC4("Tables:"));

			for (j = 0; j < tables; j++)
			{
				FUNC16(&buf, "    \"%s.%s\"",
								  FUNC1(tabres, j, 0),
								  FUNC1(tabres, j, 1));

				FUNC12(&cont, buf.data);
			}
			FUNC0(tabres);
		}

		FUNC10(&cont, pset.queryFout, false, pset.logfile);
		FUNC14(&cont);

		FUNC19(&title);
	}

	FUNC19(&buf);
	FUNC0(res);

	return true;
}