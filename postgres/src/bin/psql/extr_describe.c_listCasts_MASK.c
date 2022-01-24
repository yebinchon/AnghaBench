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
struct TYPE_13__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  COERCION_CODE_ASSIGNMENT ; 
 int /*<<< orphan*/  COERCION_CODE_EXPLICIT ; 
 int /*<<< orphan*/  COERCION_METHOD_BINARY ; 
 int /*<<< orphan*/  COERCION_METHOD_INOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,char*,char*,char*,char*) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

bool
FUNC12(const char *pattern, bool verbose)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] = {false, false, false, true, false};

	FUNC6(&buf);

	FUNC9(&buf,
					  "SELECT pg_catalog.format_type(castsource, NULL) AS \"%s\",\n"
					  "       pg_catalog.format_type(casttarget, NULL) AS \"%s\",\n",
					  FUNC5("Source type"),
					  FUNC5("Target type"));

	/*
	 * We don't attempt to localize '(binary coercible)' or '(with inout)',
	 * because there's too much risk of gettext translating a function name
	 * that happens to match some string in the PO database.
	 */
	if (pset.sversion >= 80400)
		FUNC3(&buf,
						  "       CASE WHEN c.castmethod = '%c' THEN '(binary coercible)'\n"
						  "            WHEN c.castmethod = '%c' THEN '(with inout)'\n"
						  "            ELSE p.proname\n"
						  "       END AS \"%s\",\n",
						  COERCION_METHOD_BINARY,
						  COERCION_METHOD_INOUT,
						  FUNC5("Function"));
	else
		FUNC3(&buf,
						  "       CASE WHEN c.castfunc = 0 THEN '(binary coercible)'\n"
						  "            ELSE p.proname\n"
						  "       END AS \"%s\",\n",
						  FUNC5("Function"));

	FUNC3(&buf,
					  "       CASE WHEN c.castcontext = '%c' THEN '%s'\n"
					  "            WHEN c.castcontext = '%c' THEN '%s'\n"
					  "            ELSE '%s'\n"
					  "       END AS \"%s\"",
					  COERCION_CODE_EXPLICIT,
					  FUNC5("no"),
					  COERCION_CODE_ASSIGNMENT,
					  FUNC5("in assignment"),
					  FUNC5("yes"),
					  FUNC5("Implicit?"));

	if (verbose)
		FUNC3(&buf,
						  ",\n       d.description AS \"%s\"",
						  FUNC5("Description"));

	/*
	 * We need a left join to pg_proc for binary casts; the others are just
	 * paranoia.
	 */
	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_cast c LEFT JOIN pg_catalog.pg_proc p\n"
						 "     ON c.castfunc = p.oid\n"
						 "     LEFT JOIN pg_catalog.pg_type ts\n"
						 "     ON c.castsource = ts.oid\n"
						 "     LEFT JOIN pg_catalog.pg_namespace ns\n"
						 "     ON ns.oid = ts.typnamespace\n"
						 "     LEFT JOIN pg_catalog.pg_type tt\n"
						 "     ON c.casttarget = tt.oid\n"
						 "     LEFT JOIN pg_catalog.pg_namespace nt\n"
						 "     ON nt.oid = tt.typnamespace\n");

	if (verbose)
		FUNC4(&buf,
							 "     LEFT JOIN pg_catalog.pg_description d\n"
							 "     ON d.classoid = c.tableoid AND d.objoid = "
							 "c.oid AND d.objsubid = 0\n");

	FUNC4(&buf, "WHERE ( (true");

	/*
	 * Match name pattern against either internal or external name of either
	 * castsource or casttarget
	 */
	FUNC10(pset.db, &buf, pattern, true, false,
						  "ns.nspname", "ts.typname",
						  "pg_catalog.format_type(ts.oid, NULL)",
						  "pg_catalog.pg_type_is_visible(ts.oid)");

	FUNC4(&buf, ") OR (true");

	FUNC10(pset.db, &buf, pattern, true, false,
						  "nt.nspname", "tt.typname",
						  "pg_catalog.format_type(tt.oid, NULL)",
						  "pg_catalog.pg_type_is_visible(tt.oid)");

	FUNC4(&buf, ") )\nORDER BY 1, 2;");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of casts");
	myopt.translate_header = true;
	myopt.translate_columns = translate_columns;
	myopt.n_translate_columns = FUNC7(translate_columns);

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}