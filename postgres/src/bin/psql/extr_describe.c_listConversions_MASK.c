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
struct TYPE_11__ {int translate_header; int const* translate_columns; int /*<<< orphan*/  n_translate_columns; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
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
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

bool
FUNC12(const char *pattern, bool verbose, bool showSystem)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] =
	{false, false, false, false, true, false};

	FUNC6(&buf);

	FUNC9(&buf,
					  "SELECT n.nspname AS \"%s\",\n"
					  "       c.conname AS \"%s\",\n"
					  "       pg_catalog.pg_encoding_to_char(c.conforencoding) AS \"%s\",\n"
					  "       pg_catalog.pg_encoding_to_char(c.contoencoding) AS \"%s\",\n"
					  "       CASE WHEN c.condefault THEN '%s'\n"
					  "       ELSE '%s' END AS \"%s\"",
					  FUNC5("Schema"),
					  FUNC5("Name"),
					  FUNC5("Source"),
					  FUNC5("Destination"),
					  FUNC5("yes"), FUNC5("no"),
					  FUNC5("Default?"));

	if (verbose)
		FUNC3(&buf,
						  ",\n       d.description AS \"%s\"",
						  FUNC5("Description"));

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_conversion c\n"
						 "     JOIN pg_catalog.pg_namespace n "
						 "ON n.oid = c.connamespace\n");

	if (verbose)
		FUNC4(&buf,
							 "LEFT JOIN pg_catalog.pg_description d "
							 "ON d.classoid = c.tableoid\n"
							 "          AND d.objoid = c.oid "
							 "AND d.objsubid = 0\n");

	FUNC4(&buf, "WHERE true\n");

	if (!showSystem && !pattern)
		FUNC4(&buf, "  AND n.nspname <> 'pg_catalog'\n"
							 "  AND n.nspname <> 'information_schema'\n");

	FUNC10(pset.db, &buf, pattern, true, false,
						  "n.nspname", "c.conname", NULL,
						  "pg_catalog.pg_conversion_is_visible(c.oid)");

	FUNC4(&buf, "ORDER BY 1, 2;");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of conversions");
	myopt.translate_header = true;
	myopt.translate_columns = translate_columns;
	myopt.n_translate_columns = FUNC7(translate_columns);

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}