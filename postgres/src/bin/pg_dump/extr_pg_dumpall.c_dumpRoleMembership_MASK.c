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
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  role_catalog ; 

__attribute__((used)) static void
FUNC10(PGconn *conn)
{
	PQExpBuffer buf = FUNC4();
	PGresult   *res;
	int			i;

	FUNC9(buf, "SELECT ur.rolname AS roleid, "
					  "um.rolname AS member, "
					  "a.admin_option, "
					  "ug.rolname AS grantor "
					  "FROM pg_auth_members a "
					  "LEFT JOIN %s ur on ur.oid = a.roleid "
					  "LEFT JOIN %s um on um.oid = a.member "
					  "LEFT JOIN %s ug on ug.oid = a.grantor "
					  "WHERE NOT (ur.rolname ~ '^pg_' AND um.rolname ~ '^pg_')"
					  "ORDER BY 1,2,3", role_catalog, role_catalog, role_catalog);
	res = FUNC6(conn, buf->data);

	if (FUNC3(res) > 0)
		FUNC8(OPF, "--\n-- Role memberships\n--\n\n");

	for (i = 0; i < FUNC3(res); i++)
	{
		char	   *roleid = FUNC2(res, i, 0);
		char	   *member = FUNC2(res, i, 1);
		char	   *option = FUNC2(res, i, 2);

		FUNC8(OPF, "GRANT %s", FUNC7(roleid));
		FUNC8(OPF, " TO %s", FUNC7(member));
		if (*option == 't')
			FUNC8(OPF, " WITH ADMIN OPTION");

		/*
		 * We don't track the grantor very carefully in the backend, so cope
		 * with the possibility that it has been dropped.
		 */
		if (!FUNC1(res, i, 3))
		{
			char	   *grantor = FUNC2(res, i, 3);

			FUNC8(OPF, " GRANTED BY %s", FUNC7(grantor));
		}
		FUNC8(OPF, ";\n");
	}

	FUNC0(res);
	FUNC5(buf);

	FUNC8(OPF, "\n\n");
}