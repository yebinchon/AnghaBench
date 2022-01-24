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
struct TYPE_14__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
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
					  "SELECT n.nspname as \"%s\",\n"
					  "       t.typname as \"%s\",\n"
					  "       pg_catalog.format_type(t.typbasetype, t.typtypmod) as \"%s\",\n",
					  FUNC5("Schema"),
					  FUNC5("Name"),
					  FUNC5("Type"));

	if (pset.sversion >= 90100)
		FUNC3(&buf,
						  "       (SELECT c.collname FROM pg_catalog.pg_collation c, pg_catalog.pg_type bt\n"
						  "        WHERE c.oid = t.typcollation AND bt.oid = t.typbasetype AND t.typcollation <> bt.typcollation) as \"%s\",\n",
						  FUNC5("Collation"));
	FUNC3(&buf,
					  "       CASE WHEN t.typnotnull THEN 'not null' END as \"%s\",\n"
					  "       t.typdefault as \"%s\",\n"
					  "       pg_catalog.array_to_string(ARRAY(\n"
					  "         SELECT pg_catalog.pg_get_constraintdef(r.oid, true) FROM pg_catalog.pg_constraint r WHERE t.oid = r.contypid\n"
					  "       ), ' ') as \"%s\"",
					  FUNC5("Nullable"),
					  FUNC5("Default"),
					  FUNC5("Check"));

	if (verbose)
	{
		if (pset.sversion >= 90200)
		{
			FUNC4(&buf, ",\n  ");
			FUNC7(&buf, "t.typacl");
		}
		FUNC3(&buf,
						  ",\n       d.description as \"%s\"",
						  FUNC5("Description"));
	}

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_type t\n"
						 "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace\n");

	if (verbose)
		FUNC4(&buf,
							 "     LEFT JOIN pg_catalog.pg_description d "
							 "ON d.classoid = t.tableoid AND d.objoid = t.oid "
							 "AND d.objsubid = 0\n");

	FUNC4(&buf, "WHERE t.typtype = 'd'\n");

	if (!showSystem && !pattern)
		FUNC4(&buf, "      AND n.nspname <> 'pg_catalog'\n"
							 "      AND n.nspname <> 'information_schema'\n");

	FUNC10(pset.db, &buf, pattern, true, false,
						  "n.nspname", "t.typname", NULL,
						  "pg_catalog.pg_type_is_visible(t.oid)");

	FUNC4(&buf, "ORDER BY 1, 2;");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of domains");
	myopt.translate_header = true;

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}