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
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool
FUNC14(const char *pattern, bool verbose, bool showSystem)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] = {false, false, false, false, false, true, false};

	if (pset.sversion < 90100)
	{
		char		sverbuf[32];

		FUNC9("The server (version %s) does not support collations.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC7(&buf);

	FUNC11(&buf,
					  "SELECT n.nspname AS \"%s\",\n"
					  "       c.collname AS \"%s\",\n"
					  "       c.collcollate AS \"%s\",\n"
					  "       c.collctype AS \"%s\"",
					  FUNC6("Schema"),
					  FUNC6("Name"),
					  FUNC6("Collate"),
					  FUNC6("Ctype"));

	if (pset.sversion >= 100000)
		FUNC3(&buf,
						  ",\n       CASE c.collprovider WHEN 'd' THEN 'default' WHEN 'c' THEN 'libc' WHEN 'i' THEN 'icu' END AS \"%s\"",
						  FUNC6("Provider"));
	else
		FUNC3(&buf,
						  ",\n       'libc' AS \"%s\"",
						  FUNC6("Provider"));

	if (pset.sversion >= 120000)
		FUNC3(&buf,
						  ",\n       CASE WHEN c.collisdeterministic THEN '%s' ELSE '%s' END AS \"%s\"",
						  FUNC6("yes"), FUNC6("no"),
						  FUNC6("Deterministic?"));
	else
		FUNC3(&buf,
						  ",\n       '%s' AS \"%s\"",
						  FUNC6("yes"),
						  FUNC6("Deterministic?"));

	if (verbose)
		FUNC3(&buf,
						  ",\n       pg_catalog.obj_description(c.oid, 'pg_collation') AS \"%s\"",
						  FUNC6("Description"));

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_collation c, pg_catalog.pg_namespace n\n"
						 "WHERE n.oid = c.collnamespace\n");

	if (!showSystem && !pattern)
		FUNC4(&buf, "      AND n.nspname <> 'pg_catalog'\n"
							 "      AND n.nspname <> 'information_schema'\n");

	/*
	 * Hide collations that aren't usable in the current database's encoding.
	 * If you think to change this, note that pg_collation_is_visible rejects
	 * unusable collations, so you will need to hack name pattern processing
	 * somehow to avoid inconsistent behavior.
	 */
	FUNC4(&buf, "      AND c.collencoding IN (-1, pg_catalog.pg_char_to_encoding(pg_catalog.getdatabaseencoding()))\n");

	FUNC12(pset.db, &buf, pattern, true, false,
						  "n.nspname", "c.collname", NULL,
						  "pg_catalog.pg_collation_is_visible(c.oid)");

	FUNC4(&buf, "ORDER BY 1, 2;");

	res = FUNC1(buf.data);
	FUNC13(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of collations");
	myopt.translate_header = true;
	myopt.translate_columns = translate_columns;
	myopt.n_translate_columns = FUNC8(translate_columns);

	FUNC10(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}