#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(PGconn *conn)
{
	PQExpBuffer buf = FUNC3();
	PGresult   *res;
	int			i;

	res = FUNC5(conn,
					   "SELECT groname, grolist FROM pg_group ORDER BY 1");

	if (FUNC2(res) > 0)
		FUNC7(OPF, "--\n-- Role memberships\n--\n\n");

	for (i = 0; i < FUNC2(res); i++)
	{
		char	   *groname = FUNC1(res, i, 0);
		char	   *grolist = FUNC1(res, i, 1);
		PGresult   *res2;
		int			j;

		/*
		 * Array representation is {1,2,3} ... convert to (1,2,3)
		 */
		if (FUNC12(grolist) < 3)
			continue;

		grolist = FUNC9(grolist);
		grolist[0] = '(';
		grolist[FUNC12(grolist) - 1] = ')';
		FUNC10(buf,
						  "SELECT usename FROM pg_shadow "
						  "WHERE usesysid IN %s ORDER BY 1",
						  grolist);
		FUNC8(grolist);

		res2 = FUNC5(conn, buf->data);

		for (j = 0; j < FUNC2(res2); j++)
		{
			char	   *usename = FUNC1(res2, j, 0);

			/*
			 * Don't try to grant a role to itself; can happen if old
			 * installation has identically named user and group.
			 */
			if (FUNC11(groname, usename) == 0)
				continue;

			FUNC7(OPF, "GRANT %s", FUNC6(groname));
			FUNC7(OPF, " TO %s;\n", FUNC6(usename));
		}

		FUNC0(res2);
	}

	FUNC0(res);
	FUNC4(buf);

	FUNC7(OPF, "\n\n");
}