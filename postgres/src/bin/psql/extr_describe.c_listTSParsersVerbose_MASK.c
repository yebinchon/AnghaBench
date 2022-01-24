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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,char const*,int,int,char*,char*,int /*<<< orphan*/ *,char*) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC12(const char *pattern)
{
	PQExpBufferData buf;
	PGresult   *res;
	int			i;

	FUNC7(&buf);

	FUNC9(&buf,
					  "SELECT p.oid,\n"
					  "  n.nspname,\n"
					  "  p.prsname\n"
					  "FROM pg_catalog.pg_ts_parser p\n"
					  "LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.prsnamespace\n"
		);

	FUNC10(pset.db, &buf, pattern, false, false,
						  "n.nspname", "p.prsname", NULL,
						  "pg_catalog.pg_ts_parser_is_visible(p.oid)");

	FUNC5(&buf, "ORDER BY 1, 2;");

	res = FUNC4(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	if (FUNC3(res) == 0)
	{
		if (!pset.quiet)
		{
			if (pattern)
				FUNC8("Did not find any text search parser named \"%s\".",
							 pattern);
			else
				FUNC8("Did not find any text search parsers.");
		}
		FUNC0(res);
		return false;
	}

	for (i = 0; i < FUNC3(res); i++)
	{
		const char *oid;
		const char *nspname = NULL;
		const char *prsname;

		oid = FUNC2(res, i, 0);
		if (!FUNC1(res, i, 1))
			nspname = FUNC2(res, i, 1);
		prsname = FUNC2(res, i, 2);

		if (!FUNC6(oid, nspname, prsname))
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