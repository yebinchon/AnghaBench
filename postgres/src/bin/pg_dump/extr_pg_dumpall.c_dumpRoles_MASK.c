#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  char* Oid ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ binary_upgrade ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,char*,char const*,TYPE_1__*) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  no_comments ; 
 int /*<<< orphan*/  no_role_passwords ; 
 int /*<<< orphan*/  no_security_labels ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  role_catalog ; 
 int server_version ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC21(PGconn *conn)
{
	PQExpBuffer buf = FUNC10();
	PGresult   *res;
	int			i_oid,
				i_rolname,
				i_rolsuper,
				i_rolinherit,
				i_rolcreaterole,
				i_rolcreatedb,
				i_rolcanlogin,
				i_rolconnlimit,
				i_rolpassword,
				i_rolvaliduntil,
				i_rolreplication,
				i_rolbypassrls,
				i_rolcomment,
				i_is_current_user;
	int			i;

	/* note: rolconfig is dumped later */
	if (server_version >= 90600)
		FUNC17(buf,
						  "SELECT oid, rolname, rolsuper, rolinherit, "
						  "rolcreaterole, rolcreatedb, "
						  "rolcanlogin, rolconnlimit, rolpassword, "
						  "rolvaliduntil, rolreplication, rolbypassrls, "
						  "pg_catalog.shobj_description(oid, '%s') as rolcomment, "
						  "rolname = current_user AS is_current_user "
						  "FROM %s "
						  "WHERE rolname !~ '^pg_' "
						  "ORDER BY 2", role_catalog, role_catalog);
	else if (server_version >= 90500)
		FUNC17(buf,
						  "SELECT oid, rolname, rolsuper, rolinherit, "
						  "rolcreaterole, rolcreatedb, "
						  "rolcanlogin, rolconnlimit, rolpassword, "
						  "rolvaliduntil, rolreplication, rolbypassrls, "
						  "pg_catalog.shobj_description(oid, '%s') as rolcomment, "
						  "rolname = current_user AS is_current_user "
						  "FROM %s "
						  "ORDER BY 2", role_catalog, role_catalog);
	else if (server_version >= 90100)
		FUNC17(buf,
						  "SELECT oid, rolname, rolsuper, rolinherit, "
						  "rolcreaterole, rolcreatedb, "
						  "rolcanlogin, rolconnlimit, rolpassword, "
						  "rolvaliduntil, rolreplication, "
						  "false as rolbypassrls, "
						  "pg_catalog.shobj_description(oid, '%s') as rolcomment, "
						  "rolname = current_user AS is_current_user "
						  "FROM %s "
						  "ORDER BY 2", role_catalog, role_catalog);
	else if (server_version >= 80200)
		FUNC17(buf,
						  "SELECT oid, rolname, rolsuper, rolinherit, "
						  "rolcreaterole, rolcreatedb, "
						  "rolcanlogin, rolconnlimit, rolpassword, "
						  "rolvaliduntil, false as rolreplication, "
						  "false as rolbypassrls, "
						  "pg_catalog.shobj_description(oid, '%s') as rolcomment, "
						  "rolname = current_user AS is_current_user "
						  "FROM %s "
						  "ORDER BY 2", role_catalog, role_catalog);
	else if (server_version >= 80100)
		FUNC17(buf,
						  "SELECT oid, rolname, rolsuper, rolinherit, "
						  "rolcreaterole, rolcreatedb, "
						  "rolcanlogin, rolconnlimit, rolpassword, "
						  "rolvaliduntil, false as rolreplication, "
						  "false as rolbypassrls, "
						  "null as rolcomment, "
						  "rolname = current_user AS is_current_user "
						  "FROM %s "
						  "ORDER BY 2", role_catalog);
	else
		FUNC17(buf,
						  "SELECT 0 as oid, usename as rolname, "
						  "usesuper as rolsuper, "
						  "true as rolinherit, "
						  "usesuper as rolcreaterole, "
						  "usecreatedb as rolcreatedb, "
						  "true as rolcanlogin, "
						  "-1 as rolconnlimit, "
						  "passwd as rolpassword, "
						  "valuntil as rolvaliduntil, "
						  "false as rolreplication, "
						  "false as rolbypassrls, "
						  "null as rolcomment, "
						  "usename = current_user AS is_current_user "
						  "FROM pg_shadow "
						  "UNION ALL "
						  "SELECT 0 as oid, groname as rolname, "
						  "false as rolsuper, "
						  "true as rolinherit, "
						  "false as rolcreaterole, "
						  "false as rolcreatedb, "
						  "false as rolcanlogin, "
						  "-1 as rolconnlimit, "
						  "null::text as rolpassword, "
						  "null::timestamptz as rolvaliduntil, "
						  "false as rolreplication, "
						  "false as rolbypassrls, "
						  "null as rolcomment, "
						  "false AS is_current_user "
						  "FROM pg_group "
						  "WHERE NOT EXISTS (SELECT 1 FROM pg_shadow "
						  " WHERE usename = groname) "
						  "ORDER BY 2");

	res = FUNC13(conn, buf->data);

	i_oid = FUNC1(res, "oid");
	i_rolname = FUNC1(res, "rolname");
	i_rolsuper = FUNC1(res, "rolsuper");
	i_rolinherit = FUNC1(res, "rolinherit");
	i_rolcreaterole = FUNC1(res, "rolcreaterole");
	i_rolcreatedb = FUNC1(res, "rolcreatedb");
	i_rolcanlogin = FUNC1(res, "rolcanlogin");
	i_rolconnlimit = FUNC1(res, "rolconnlimit");
	i_rolpassword = FUNC1(res, "rolpassword");
	i_rolvaliduntil = FUNC1(res, "rolvaliduntil");
	i_rolreplication = FUNC1(res, "rolreplication");
	i_rolbypassrls = FUNC1(res, "rolbypassrls");
	i_rolcomment = FUNC1(res, "rolcomment");
	i_is_current_user = FUNC1(res, "is_current_user");

	if (FUNC4(res) > 0)
		FUNC15(OPF, "--\n-- Roles\n--\n\n");

	for (i = 0; i < FUNC4(res); i++)
	{
		const char *rolename;
		Oid			auth_oid;

		auth_oid = FUNC8(FUNC3(res, i, i_oid));
		rolename = FUNC3(res, i, i_rolname);

		if (FUNC20(rolename, "pg_", 3) == 0)
		{
			FUNC16("role name starting with \"pg_\" skipped (%s)",
						   rolename);
			continue;
		}

		FUNC18(buf);

		if (binary_upgrade)
		{
			FUNC6(buf, "\n-- For binary upgrade, must preserve pg_authid.oid\n");
			FUNC5(buf,
							  "SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('%u'::pg_catalog.oid);\n\n",
							  auth_oid);
		}

		/*
		 * We dump CREATE ROLE followed by ALTER ROLE to ensure that the role
		 * will acquire the right properties even if it already exists (ie, it
		 * won't hurt for the CREATE to fail).  This is particularly important
		 * for the role we are connected as, since even with --clean we will
		 * have failed to drop it.  binary_upgrade cannot generate any errors,
		 * so we assume the current role is already created.
		 */
		if (!binary_upgrade ||
			FUNC19(FUNC3(res, i, i_is_current_user), "f") == 0)
			FUNC5(buf, "CREATE ROLE %s;\n", FUNC14(rolename));
		FUNC5(buf, "ALTER ROLE %s WITH", FUNC14(rolename));

		if (FUNC19(FUNC3(res, i, i_rolsuper), "t") == 0)
			FUNC6(buf, " SUPERUSER");
		else
			FUNC6(buf, " NOSUPERUSER");

		if (FUNC19(FUNC3(res, i, i_rolinherit), "t") == 0)
			FUNC6(buf, " INHERIT");
		else
			FUNC6(buf, " NOINHERIT");

		if (FUNC19(FUNC3(res, i, i_rolcreaterole), "t") == 0)
			FUNC6(buf, " CREATEROLE");
		else
			FUNC6(buf, " NOCREATEROLE");

		if (FUNC19(FUNC3(res, i, i_rolcreatedb), "t") == 0)
			FUNC6(buf, " CREATEDB");
		else
			FUNC6(buf, " NOCREATEDB");

		if (FUNC19(FUNC3(res, i, i_rolcanlogin), "t") == 0)
			FUNC6(buf, " LOGIN");
		else
			FUNC6(buf, " NOLOGIN");

		if (FUNC19(FUNC3(res, i, i_rolreplication), "t") == 0)
			FUNC6(buf, " REPLICATION");
		else
			FUNC6(buf, " NOREPLICATION");

		if (FUNC19(FUNC3(res, i, i_rolbypassrls), "t") == 0)
			FUNC6(buf, " BYPASSRLS");
		else
			FUNC6(buf, " NOBYPASSRLS");

		if (FUNC19(FUNC3(res, i, i_rolconnlimit), "-1") != 0)
			FUNC5(buf, " CONNECTION LIMIT %s",
							  FUNC3(res, i, i_rolconnlimit));


		if (!FUNC2(res, i, i_rolpassword) && !no_role_passwords)
		{
			FUNC6(buf, " PASSWORD ");
			FUNC7(buf, FUNC3(res, i, i_rolpassword), conn);
		}

		if (!FUNC2(res, i, i_rolvaliduntil))
			FUNC5(buf, " VALID UNTIL '%s'",
							  FUNC3(res, i, i_rolvaliduntil));

		FUNC6(buf, ";\n");

		if (!no_comments && !FUNC2(res, i, i_rolcomment))
		{
			FUNC5(buf, "COMMENT ON ROLE %s IS ", FUNC14(rolename));
			FUNC7(buf, FUNC3(res, i, i_rolcomment), conn);
			FUNC6(buf, ";\n");
		}

		if (!no_security_labels && server_version >= 90200)
			FUNC9(conn, "pg_authid", auth_oid,
							 "ROLE", rolename,
							 buf);

		FUNC15(OPF, "%s", buf->data);
	}

	/*
	 * Dump configuration settings for roles after all roles have been dumped.
	 * We do it this way because config settings for roles could mention the
	 * names of other roles.
	 */
	for (i = 0; i < FUNC4(res); i++)
		FUNC12(conn, FUNC3(res, i, i_rolname));

	FUNC0(res);

	FUNC15(OPF, "\n\n");

	FUNC11(buf);
}