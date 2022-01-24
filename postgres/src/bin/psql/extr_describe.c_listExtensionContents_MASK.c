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
typedef  int /*<<< orphan*/  sverbuf ;
struct TYPE_9__ {int sversion; int /*<<< orphan*/  quiet; int /*<<< orphan*/  db; } ;
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
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,char const*,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

bool
FUNC12(const char *pattern)
{
	PQExpBufferData buf;
	PGresult   *res;
	int			i;

	if (pset.sversion < 90100)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support extensions.",
					 FUNC5(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC6(&buf);
	FUNC9(&buf,
					  "SELECT e.extname, e.oid\n"
					  "FROM pg_catalog.pg_extension e\n");

	FUNC10(pset.db, &buf, pattern,
						  false, false,
						  NULL, "e.extname", NULL,
						  NULL);

	FUNC4(&buf, "ORDER BY 1;");

	res = FUNC3(buf.data);
	FUNC11(&buf);
	if (!res)
		return false;

	if (FUNC2(res) == 0)
	{
		if (!pset.quiet)
		{
			if (pattern)
				FUNC8("Did not find any extension named \"%s\".",
							 pattern);
			else
				FUNC8("Did not find any extensions.");
		}
		FUNC0(res);
		return false;
	}

	for (i = 0; i < FUNC2(res); i++)
	{
		const char *extname;
		const char *oid;

		extname = FUNC1(res, i, 0);
		oid = FUNC1(res, i, 1);

		if (!FUNC7(extname, oid))
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