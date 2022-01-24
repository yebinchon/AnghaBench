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
struct TYPE_9__ {int /*<<< orphan*/  quiet; int /*<<< orphan*/  db; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

bool
FUNC11(const char *pattern, bool verbose, bool showSystem)
{
	PQExpBufferData buf;
	PGresult   *res;
	int			i;

	FUNC6(&buf);

	FUNC8(&buf,
					  "SELECT c.oid,\n"
					  "  n.nspname,\n"
					  "  c.relname\n"
					  "FROM pg_catalog.pg_class c\n"
					  "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace\n");

	if (!showSystem && !pattern)
		FUNC4(&buf, "WHERE n.nspname <> 'pg_catalog'\n"
							 "      AND n.nspname <> 'information_schema'\n");

	FUNC9(pset.db, &buf, pattern, !showSystem && !pattern, false,
						  "n.nspname", "c.relname", NULL,
						  "pg_catalog.pg_table_is_visible(c.oid)");

	FUNC4(&buf, "ORDER BY 2, 3;");

	res = FUNC3(buf.data);
	FUNC10(&buf);
	if (!res)
		return false;

	if (FUNC2(res) == 0)
	{
		if (!pset.quiet)
		{
			if (pattern)
				FUNC7("Did not find any relation named \"%s\".",
							 pattern);
			else
				FUNC7("Did not find any relations.");
		}
		FUNC0(res);
		return false;
	}

	for (i = 0; i < FUNC2(res); i++)
	{
		const char *oid;
		const char *nspname;
		const char *relname;

		oid = FUNC1(res, i, 0);
		nspname = FUNC1(res, i, 1);
		relname = FUNC1(res, i, 2);

		if (!FUNC5(nspname, relname, oid, verbose))
		{
			FUNC0(res);
			return false;
		}
		if (cancel_pressed)
		{
			FUNC0(res);
			return false;
		}
	}

	FUNC0(res);
	return true;
}