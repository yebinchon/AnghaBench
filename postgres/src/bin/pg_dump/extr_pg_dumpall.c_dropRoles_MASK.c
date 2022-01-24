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
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ if_exists ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  role_catalog ; 
 int server_version ; 

__attribute__((used)) static void
FUNC10(PGconn *conn)
{
	PQExpBuffer buf = FUNC4();
	PGresult   *res;
	int			i_rolname;
	int			i;

	if (server_version >= 90600)
		FUNC9(buf,
						  "SELECT rolname "
						  "FROM %s "
						  "WHERE rolname !~ '^pg_' "
						  "ORDER BY 1", role_catalog);
	else if (server_version >= 80100)
		FUNC9(buf,
						  "SELECT rolname "
						  "FROM %s "
						  "ORDER BY 1", role_catalog);
	else
		FUNC9(buf,
						  "SELECT usename as rolname "
						  "FROM pg_shadow "
						  "UNION "
						  "SELECT groname as rolname "
						  "FROM pg_group "
						  "ORDER BY 1");

	res = FUNC6(conn, buf->data);

	i_rolname = FUNC1(res, "rolname");

	if (FUNC3(res) > 0)
		FUNC8(OPF, "--\n-- Drop roles\n--\n\n");

	for (i = 0; i < FUNC3(res); i++)
	{
		const char *rolename;

		rolename = FUNC2(res, i, i_rolname);

		FUNC8(OPF, "DROP ROLE %s%d;\n",
				if_exists ? "IF EXISTS " : "",
				FUNC7(rolename));
	}

	FUNC0(res);
	FUNC5(buf);

	FUNC8(OPF, "\n\n");
}