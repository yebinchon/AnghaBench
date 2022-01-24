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
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

bool
FUNC12(const char *pattern, bool verbose)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] =
	{false, false, false, true, false, false, false};

	FUNC6(&buf);

	FUNC9(&buf,
					  "SELECT evtname as \"%s\", "
					  "evtevent as \"%s\", "
					  "pg_catalog.pg_get_userbyid(e.evtowner) as \"%s\",\n"
					  " case evtenabled when 'O' then '%s'"
					  "  when 'R' then '%s'"
					  "  when 'A' then '%s'"
					  "  when 'D' then '%s' end as \"%s\",\n"
					  " e.evtfoid::pg_catalog.regproc as \"%s\", "
					  "pg_catalog.array_to_string(array(select x"
					  " from pg_catalog.unnest(evttags) as t(x)), ', ') as \"%s\"",
					  FUNC5("Name"),
					  FUNC5("Event"),
					  FUNC5("Owner"),
					  FUNC5("enabled"),
					  FUNC5("replica"),
					  FUNC5("always"),
					  FUNC5("disabled"),
					  FUNC5("Enabled"),
					  FUNC5("Function"),
					  FUNC5("Tags"));
	if (verbose)
		FUNC3(&buf,
						  ",\npg_catalog.obj_description(e.oid, 'pg_event_trigger') as \"%s\"",
						  FUNC5("Description"));
	FUNC4(&buf,
						 "\nFROM pg_catalog.pg_event_trigger e ");

	FUNC10(pset.db, &buf, pattern, false, false,
						  NULL, "evtname", NULL, NULL);

	FUNC4(&buf, "ORDER BY 1");

	res = FUNC1(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	myopt.title = FUNC2("List of event triggers");
	myopt.translate_header = true;
	myopt.translate_columns = translate_columns;
	myopt.n_translate_columns = FUNC7(translate_columns);

	FUNC8(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC0(res);
	return true;
}