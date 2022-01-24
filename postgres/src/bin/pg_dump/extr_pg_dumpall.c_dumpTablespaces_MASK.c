#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,TYPE_1__*) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  no_comments ; 
 int /*<<< orphan*/  no_security_labels ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*) ; 
 char* FUNC18 (char*) ; 
 int server_version ; 
 int /*<<< orphan*/  skip_acls ; 

__attribute__((used)) static void
FUNC19(PGconn *conn)
{
	PGresult   *res;
	int			i;

	/*
	 * Get all tablespaces except built-in ones (which we assume are named
	 * pg_xxx)
	 *
	 * For the tablespace ACLs, as of 9.6, we extract both the positive (as
	 * spcacl) and negative (as rspcacl) ACLs, relative to the default ACL for
	 * tablespaces, which are then passed to buildACLCommands() below.
	 *
	 * See buildACLQueries() and buildACLCommands().
	 *
	 * The order in which privileges are in the ACL string (the order they
	 * have been GRANT'd in, which the backend maintains) must be preserved to
	 * ensure that GRANTs WITH GRANT OPTION and subsequent GRANTs based on
	 * those are dumped in the correct order.
	 *
	 * Note that we do not support initial privileges (pg_init_privs) on
	 * tablespaces, so this logic cannot make use of buildACLQueries().
	 */
	if (server_version >= 90600)
		res = FUNC12(conn, "SELECT oid, spcname, "
						   "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
						   "pg_catalog.pg_tablespace_location(oid), "
						   "(SELECT array_agg(acl ORDER BY row_n) FROM "
						   "  (SELECT acl, row_n FROM "
						   "     unnest(coalesce(spcacl,acldefault('t',spcowner))) "
						   "     WITH ORDINALITY AS perm(acl,row_n) "
						   "   WHERE NOT EXISTS ( "
						   "     SELECT 1 "
						   "     FROM unnest(acldefault('t',spcowner)) "
						   "       AS init(init_acl) "
						   "     WHERE acl = init_acl)) AS spcacls) "
						   " AS spcacl, "
						   "(SELECT array_agg(acl ORDER BY row_n) FROM "
						   "  (SELECT acl, row_n FROM "
						   "     unnest(acldefault('t',spcowner)) "
						   "     WITH ORDINALITY AS initp(acl,row_n) "
						   "   WHERE NOT EXISTS ( "
						   "     SELECT 1 "
						   "     FROM unnest(coalesce(spcacl,acldefault('t',spcowner))) "
						   "       AS permp(orig_acl) "
						   "     WHERE acl = orig_acl)) AS rspcacls) "
						   " AS rspcacl, "
						   "array_to_string(spcoptions, ', '),"
						   "pg_catalog.shobj_description(oid, 'pg_tablespace') "
						   "FROM pg_catalog.pg_tablespace "
						   "WHERE spcname !~ '^pg_' "
						   "ORDER BY 1");
	else if (server_version >= 90200)
		res = FUNC12(conn, "SELECT oid, spcname, "
						   "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
						   "pg_catalog.pg_tablespace_location(oid), "
						   "spcacl, '' as rspcacl, "
						   "array_to_string(spcoptions, ', '),"
						   "pg_catalog.shobj_description(oid, 'pg_tablespace') "
						   "FROM pg_catalog.pg_tablespace "
						   "WHERE spcname !~ '^pg_' "
						   "ORDER BY 1");
	else if (server_version >= 90000)
		res = FUNC12(conn, "SELECT oid, spcname, "
						   "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
						   "spclocation, spcacl, '' as rspcacl, "
						   "array_to_string(spcoptions, ', '),"
						   "pg_catalog.shobj_description(oid, 'pg_tablespace') "
						   "FROM pg_catalog.pg_tablespace "
						   "WHERE spcname !~ '^pg_' "
						   "ORDER BY 1");
	else if (server_version >= 80200)
		res = FUNC12(conn, "SELECT oid, spcname, "
						   "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
						   "spclocation, spcacl, '' as rspcacl, null, "
						   "pg_catalog.shobj_description(oid, 'pg_tablespace') "
						   "FROM pg_catalog.pg_tablespace "
						   "WHERE spcname !~ '^pg_' "
						   "ORDER BY 1");
	else
		res = FUNC12(conn, "SELECT oid, spcname, "
						   "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
						   "spclocation, spcacl, '' as rspcacl, "
						   "null, null "
						   "FROM pg_catalog.pg_tablespace "
						   "WHERE spcname !~ '^pg_' "
						   "ORDER BY 1");

	if (FUNC3(res) > 0)
		FUNC15(OPF, "--\n-- Tablespaces\n--\n\n");

	for (i = 0; i < FUNC3(res); i++)
	{
		PQExpBuffer buf = FUNC10();
		Oid			spcoid = FUNC7(FUNC2(res, i, 0));
		char	   *spcname = FUNC2(res, i, 1);
		char	   *spcowner = FUNC2(res, i, 2);
		char	   *spclocation = FUNC2(res, i, 3);
		char	   *spcacl = FUNC2(res, i, 4);
		char	   *rspcacl = FUNC2(res, i, 5);
		char	   *spcoptions = FUNC2(res, i, 6);
		char	   *spccomment = FUNC2(res, i, 7);
		char	   *fspcname;

		/* needed for buildACLCommands() */
		fspcname = FUNC18(FUNC14(spcname));

		FUNC4(buf, "CREATE TABLESPACE %s", fspcname);
		FUNC4(buf, " OWNER %s", FUNC14(spcowner));

		FUNC5(buf, " LOCATION ");
		FUNC6(buf, spclocation, conn);
		FUNC5(buf, ";\n");

		if (spcoptions && spcoptions[0] != '\0')
			FUNC4(buf, "ALTER TABLESPACE %s SET (%s);\n",
							  fspcname, spcoptions);

		if (!skip_acls &&
			!FUNC8(fspcname, NULL, NULL, "TABLESPACE",
							  spcacl, rspcacl,
							  spcowner, "", server_version, buf))
		{
			FUNC17("could not parse ACL list (%s) for tablespace \"%s\"",
						 spcacl, spcname);
			FUNC1(conn);
			FUNC13(1);
		}

		if (!no_comments && spccomment && spccomment[0] != '\0')
		{
			FUNC4(buf, "COMMENT ON TABLESPACE %s IS ", fspcname);
			FUNC6(buf, spccomment, conn);
			FUNC5(buf, ";\n");
		}

		if (!no_security_labels && server_version >= 90200)
			FUNC9(conn, "pg_tablespace", spcoid,
							 "TABLESPACE", spcname,
							 buf);

		FUNC15(OPF, "%s", buf->data);

		FUNC16(fspcname);
		FUNC11(buf);
	}

	FUNC0(res);
	FUNC15(OPF, "\n\n");
}