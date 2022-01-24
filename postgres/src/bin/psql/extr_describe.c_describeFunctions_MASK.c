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
struct TYPE_12__ {int translate_header; int const* translate_columns; void* n_translate_columns; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 void* FUNC8 (int const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/ * FUNC14 (char const*,char) ; 
 scalar_t__ FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 

bool
FUNC18(const char *functypes, const char *pattern, bool verbose, bool showSystem)
{
	bool		showAggregate = FUNC14(functypes, 'a') != NULL;
	bool		showNormal = FUNC14(functypes, 'n') != NULL;
	bool		showProcedure = FUNC14(functypes, 'p') != NULL;
	bool		showTrigger = FUNC14(functypes, 't') != NULL;
	bool		showWindow = FUNC14(functypes, 'w') != NULL;
	bool		have_where;
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] = {false, false, false, false, true, true, true, false, true, false, false, false, false};

	/* No "Parallel" column before 9.6 */
	static const bool translate_columns_pre_96[] = {false, false, false, false, true, true, false, true, false, false, false, false};

	if (FUNC15(functypes) != FUNC16(functypes, "anptwS+"))
	{
		FUNC9("\\df only takes [anptwS+] as options");
		return true;
	}

	if (showProcedure && pset.sversion < 110000)
	{
		char		sverbuf[32];

		FUNC9("\\df does not take a \"%c\" option with server version %s",
					 'p',
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	if (showWindow && pset.sversion < 80400)
	{
		char		sverbuf[32];

		FUNC9("\\df does not take a \"%c\" option with server version %s",
					 'w',
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	if (!showAggregate && !showNormal && !showProcedure && !showTrigger && !showWindow)
	{
		showAggregate = showNormal = showTrigger = true;
		if (pset.sversion >= 110000)
			showProcedure = true;
		if (pset.sversion >= 80400)
			showWindow = true;
	}

	FUNC7(&buf);

	FUNC12(&buf,
					  "SELECT n.nspname as \"%s\",\n"
					  "  p.proname as \"%s\",\n",
					  FUNC6("Schema"),
					  FUNC6("Name"));

	if (pset.sversion >= 110000)
		FUNC3(&buf,
						  "  pg_catalog.pg_get_function_result(p.oid) as \"%s\",\n"
						  "  pg_catalog.pg_get_function_arguments(p.oid) as \"%s\",\n"
						  " CASE p.prokind\n"
						  "  WHEN 'a' THEN '%s'\n"
						  "  WHEN 'w' THEN '%s'\n"
						  "  WHEN 'p' THEN '%s'\n"
						  "  ELSE '%s'\n"
						  " END as \"%s\"",
						  FUNC6("Result data type"),
						  FUNC6("Argument data types"),
		/* translator: "agg" is short for "aggregate" */
						  FUNC6("agg"),
						  FUNC6("window"),
						  FUNC6("proc"),
						  FUNC6("func"),
						  FUNC6("Type"));
	else if (pset.sversion >= 80400)
		FUNC3(&buf,
						  "  pg_catalog.pg_get_function_result(p.oid) as \"%s\",\n"
						  "  pg_catalog.pg_get_function_arguments(p.oid) as \"%s\",\n"
						  " CASE\n"
						  "  WHEN p.proisagg THEN '%s'\n"
						  "  WHEN p.proiswindow THEN '%s'\n"
						  "  WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\n"
						  "  ELSE '%s'\n"
						  " END as \"%s\"",
						  FUNC6("Result data type"),
						  FUNC6("Argument data types"),
		/* translator: "agg" is short for "aggregate" */
						  FUNC6("agg"),
						  FUNC6("window"),
						  FUNC6("trigger"),
						  FUNC6("func"),
						  FUNC6("Type"));
	else if (pset.sversion >= 80100)
		FUNC3(&buf,
						  "  CASE WHEN p.proretset THEN 'SETOF ' ELSE '' END ||\n"
						  "  pg_catalog.format_type(p.prorettype, NULL) as \"%s\",\n"
						  "  CASE WHEN proallargtypes IS NOT NULL THEN\n"
						  "    pg_catalog.array_to_string(ARRAY(\n"
						  "      SELECT\n"
						  "        CASE\n"
						  "          WHEN p.proargmodes[s.i] = 'i' THEN ''\n"
						  "          WHEN p.proargmodes[s.i] = 'o' THEN 'OUT '\n"
						  "          WHEN p.proargmodes[s.i] = 'b' THEN 'INOUT '\n"
						  "          WHEN p.proargmodes[s.i] = 'v' THEN 'VARIADIC '\n"
						  "        END ||\n"
						  "        CASE\n"
						  "          WHEN COALESCE(p.proargnames[s.i], '') = '' THEN ''\n"
						  "          ELSE p.proargnames[s.i] || ' '\n"
						  "        END ||\n"
						  "        pg_catalog.format_type(p.proallargtypes[s.i], NULL)\n"
						  "      FROM\n"
						  "        pg_catalog.generate_series(1, pg_catalog.array_upper(p.proallargtypes, 1)) AS s(i)\n"
						  "    ), ', ')\n"
						  "  ELSE\n"
						  "    pg_catalog.array_to_string(ARRAY(\n"
						  "      SELECT\n"
						  "        CASE\n"
						  "          WHEN COALESCE(p.proargnames[s.i+1], '') = '' THEN ''\n"
						  "          ELSE p.proargnames[s.i+1] || ' '\n"
						  "          END ||\n"
						  "        pg_catalog.format_type(p.proargtypes[s.i], NULL)\n"
						  "      FROM\n"
						  "        pg_catalog.generate_series(0, pg_catalog.array_upper(p.proargtypes, 1)) AS s(i)\n"
						  "    ), ', ')\n"
						  "  END AS \"%s\",\n"
						  "  CASE\n"
						  "    WHEN p.proisagg THEN '%s'\n"
						  "    WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\n"
						  "    ELSE '%s'\n"
						  "  END AS \"%s\"",
						  FUNC6("Result data type"),
						  FUNC6("Argument data types"),
		/* translator: "agg" is short for "aggregate" */
						  FUNC6("agg"),
						  FUNC6("trigger"),
						  FUNC6("func"),
						  FUNC6("Type"));
	else
		FUNC3(&buf,
						  "  CASE WHEN p.proretset THEN 'SETOF ' ELSE '' END ||\n"
						  "  pg_catalog.format_type(p.prorettype, NULL) as \"%s\",\n"
						  "  pg_catalog.oidvectortypes(p.proargtypes) as \"%s\",\n"
						  "  CASE\n"
						  "    WHEN p.proisagg THEN '%s'\n"
						  "    WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\n"
						  "    ELSE '%s'\n"
						  "  END AS \"%s\"",
						  FUNC6("Result data type"),
						  FUNC6("Argument data types"),
		/* translator: "agg" is short for "aggregate" */
						  FUNC6("agg"),
						  FUNC6("trigger"),
						  FUNC6("func"),
						  FUNC6("Type"));

	if (verbose)
	{
		FUNC3(&buf,
						  ",\n CASE\n"
						  "  WHEN p.provolatile = 'i' THEN '%s'\n"
						  "  WHEN p.provolatile = 's' THEN '%s'\n"
						  "  WHEN p.provolatile = 'v' THEN '%s'\n"
						  " END as \"%s\"",
						  FUNC6("immutable"),
						  FUNC6("stable"),
						  FUNC6("volatile"),
						  FUNC6("Volatility"));
		if (pset.sversion >= 90600)
			FUNC3(&buf,
							  ",\n CASE\n"
							  "  WHEN p.proparallel = 'r' THEN '%s'\n"
							  "  WHEN p.proparallel = 's' THEN '%s'\n"
							  "  WHEN p.proparallel = 'u' THEN '%s'\n"
							  " END as \"%s\"",
							  FUNC6("restricted"),
							  FUNC6("safe"),
							  FUNC6("unsafe"),
							  FUNC6("Parallel"));
		FUNC3(&buf,
						  ",\n pg_catalog.pg_get_userbyid(p.proowner) as \"%s\""
						  ",\n CASE WHEN prosecdef THEN '%s' ELSE '%s' END AS \"%s\"",
						  FUNC6("Owner"),
						  FUNC6("definer"),
						  FUNC6("invoker"),
						  FUNC6("Security"));
		FUNC4(&buf, ",\n ");
		FUNC10(&buf, "p.proacl");
		FUNC3(&buf,
						  ",\n l.lanname as \"%s\""
						  ",\n p.prosrc as \"%s\""
						  ",\n pg_catalog.obj_description(p.oid, 'pg_proc') as \"%s\"",
						  FUNC6("Language"),
						  FUNC6("Source code"),
						  FUNC6("Description"));
	}

	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_proc p"
						 "\n     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\n");

	if (verbose)
		FUNC4(&buf,
							 "     LEFT JOIN pg_catalog.pg_language l ON l.oid = p.prolang\n");

	have_where = false;

	/* filter by function type, if requested */
	if (showNormal && showAggregate && showProcedure && showTrigger && showWindow)
		 /* Do nothing */ ;
	else if (showNormal)
	{
		if (!showAggregate)
		{
			if (have_where)
				FUNC4(&buf, "      AND ");
			else
			{
				FUNC4(&buf, "WHERE ");
				have_where = true;
			}
			if (pset.sversion >= 110000)
				FUNC4(&buf, "p.prokind <> 'a'\n");
			else
				FUNC4(&buf, "NOT p.proisagg\n");
		}
		if (!showProcedure && pset.sversion >= 110000)
		{
			if (have_where)
				FUNC4(&buf, "      AND ");
			else
			{
				FUNC4(&buf, "WHERE ");
				have_where = true;
			}
			FUNC4(&buf, "p.prokind <> 'p'\n");
		}
		if (!showTrigger)
		{
			if (have_where)
				FUNC4(&buf, "      AND ");
			else
			{
				FUNC4(&buf, "WHERE ");
				have_where = true;
			}
			FUNC4(&buf, "p.prorettype <> 'pg_catalog.trigger'::pg_catalog.regtype\n");
		}
		if (!showWindow && pset.sversion >= 80400)
		{
			if (have_where)
				FUNC4(&buf, "      AND ");
			else
			{
				FUNC4(&buf, "WHERE ");
				have_where = true;
			}
			if (pset.sversion >= 110000)
				FUNC4(&buf, "p.prokind <> 'w'\n");
			else
				FUNC4(&buf, "NOT p.proiswindow\n");
		}
	}
	else
	{
		bool		needs_or = false;

		FUNC4(&buf, "WHERE (\n       ");
		have_where = true;
		/* Note: at least one of these must be true ... */
		if (showAggregate)
		{
			if (pset.sversion >= 110000)
				FUNC4(&buf, "p.prokind = 'a'\n");
			else
				FUNC4(&buf, "p.proisagg\n");
			needs_or = true;
		}
		if (showTrigger)
		{
			if (needs_or)
				FUNC4(&buf, "       OR ");
			FUNC4(&buf,
								 "p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype\n");
			needs_or = true;
		}
		if (showProcedure)
		{
			if (needs_or)
				FUNC4(&buf, "       OR ");
			FUNC4(&buf, "p.prokind = 'p'\n");
			needs_or = true;
		}
		if (showWindow)
		{
			if (needs_or)
				FUNC4(&buf, "       OR ");
			if (pset.sversion >= 110000)
				FUNC4(&buf, "p.prokind = 'w'\n");
			else
				FUNC4(&buf, "p.proiswindow\n");
			needs_or = true;
		}
		FUNC4(&buf, "      )\n");
	}

	FUNC13(pset.db, &buf, pattern, have_where, false,
						  "n.nspname", "p.proname", NULL,
						  "pg_catalog.pg_function_is_visible(p.oid)");

	if (!showSystem && !pattern)
		FUNC4(&buf, "      AND n.nspname <> 'pg_catalog'\n"
							 "      AND n.nspname <> 'information_schema'\n");

	FUNC4(&buf, "ORDER BY 1, 2, 4;");

	res = FUNC1(buf.data);
	FUNC17(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of functions");
	myopt.translate_header = true;
	if (pset.sversion >= 90600)
	{
		myopt.translate_columns = translate_columns;
		myopt.n_translate_columns = FUNC8(translate_columns);
	}
	else
	{
		myopt.translate_columns = translate_columns_pre_96;
		myopt.n_translate_columns = FUNC8(translate_columns_pre_96);
	}

	FUNC11(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}