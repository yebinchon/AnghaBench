#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_9__ {int /*<<< orphan*/  queryFout; scalar_t__ timing; int /*<<< orphan*/  db; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC29(const char *query, double *elapsed_msec)
{
	PGresult   *results;
	bool		OK;
	instr_time	before,
				after;

	*elapsed_msec = 0;

	if (pset.timing)
		FUNC3(before);

	/*
	 * To parse the query but not execute it, we prepare it, using the unnamed
	 * prepared statement.  This is invisible to psql users, since there's no
	 * way to access the unnamed prepared statement from psql user space. The
	 * next Parse or Query protocol message would overwrite the statement
	 * anyway.  (So there's no great need to clear it when done, which is a
	 * good thing because libpq provides no easy way to do that.)
	 */
	results = FUNC15(pset.db, "", query, 0, NULL);
	if (FUNC16(results) != PGRES_COMMAND_OK)
	{
		FUNC25("%s", FUNC7(pset.db));
		FUNC18(results, false);
		FUNC1(results);
		return false;
	}
	FUNC5(results);

	results = FUNC6(pset.db, "");
	OK = FUNC0(results) &&
		(FUNC16(results) == PGRES_COMMAND_OK);
	if (OK && results)
	{
		if (FUNC14(results) > 0)
		{
			PQExpBufferData buf;
			int			i;

			FUNC24(&buf);

			FUNC26(&buf,
							  "SELECT name AS \"%s\", pg_catalog.format_type(tp, tpm) AS \"%s\"\n"
							  "FROM (VALUES ",
							  FUNC23("Column"),
							  FUNC23("Type"));

			for (i = 0; i < FUNC14(results); i++)
			{
				const char *name;
				char	   *escname;

				if (i > 0)
					FUNC21(&buf, ",");

				name = FUNC11(results, i);
				escname = FUNC8(pset.db, name, FUNC27(name));

				if (escname == NULL)
				{
					FUNC25("%s", FUNC7(pset.db));
					FUNC5(results);
					FUNC28(&buf);
					return false;
				}

				FUNC20(&buf, "(%s, '%u'::pg_catalog.oid, %d)",
								  escname,
								  FUNC13(results, i),
								  FUNC10(results, i));

				FUNC12(escname);
			}

			FUNC21(&buf, ") s(name, tp, tpm)");
			FUNC5(results);

			results = FUNC9(pset.db, buf.data);
			OK = FUNC0(results);

			if (pset.timing)
			{
				FUNC3(after);
				FUNC4(after, before);
				*elapsed_msec += FUNC2(after);
			}

			if (OK && results)
				OK = FUNC17(results);

			FUNC28(&buf);
		}
		else
			FUNC22(pset.queryFout,
					"%s", FUNC19("The command has no result, or the result has no columns.\n"));
	}

	FUNC18(results, OK);
	FUNC1(results);

	return OK;
}