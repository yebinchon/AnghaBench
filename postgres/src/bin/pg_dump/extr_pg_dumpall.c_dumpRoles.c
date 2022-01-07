
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;
typedef char* Oid ;


 int OPF ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendStringLiteralConn (TYPE_1__*,char*,int *) ;
 char* atooid (char*) ;
 scalar_t__ binary_upgrade ;
 int buildShSecLabels (int *,char*,char*,char*,char const*,TYPE_1__*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int dumpUserConfig (int *,char*) ;
 int * executeQuery (int *,char*) ;
 char* fmtId (char const*) ;
 int fprintf (int ,char*,...) ;
 int no_comments ;
 int no_role_passwords ;
 int no_security_labels ;
 int pg_log_warning (char*,char const*) ;
 int printfPQExpBuffer (TYPE_1__*,char*,...) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int role_catalog ;
 int server_version ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
dumpRoles(PGconn *conn)
{
 PQExpBuffer buf = createPQExpBuffer();
 PGresult *res;
 int i_oid,
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
 int i;


 if (server_version >= 90600)
  printfPQExpBuffer(buf,
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
  printfPQExpBuffer(buf,
        "SELECT oid, rolname, rolsuper, rolinherit, "
        "rolcreaterole, rolcreatedb, "
        "rolcanlogin, rolconnlimit, rolpassword, "
        "rolvaliduntil, rolreplication, rolbypassrls, "
        "pg_catalog.shobj_description(oid, '%s') as rolcomment, "
        "rolname = current_user AS is_current_user "
        "FROM %s "
        "ORDER BY 2", role_catalog, role_catalog);
 else if (server_version >= 90100)
  printfPQExpBuffer(buf,
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
  printfPQExpBuffer(buf,
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
  printfPQExpBuffer(buf,
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
  printfPQExpBuffer(buf,
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

 res = executeQuery(conn, buf->data);

 i_oid = PQfnumber(res, "oid");
 i_rolname = PQfnumber(res, "rolname");
 i_rolsuper = PQfnumber(res, "rolsuper");
 i_rolinherit = PQfnumber(res, "rolinherit");
 i_rolcreaterole = PQfnumber(res, "rolcreaterole");
 i_rolcreatedb = PQfnumber(res, "rolcreatedb");
 i_rolcanlogin = PQfnumber(res, "rolcanlogin");
 i_rolconnlimit = PQfnumber(res, "rolconnlimit");
 i_rolpassword = PQfnumber(res, "rolpassword");
 i_rolvaliduntil = PQfnumber(res, "rolvaliduntil");
 i_rolreplication = PQfnumber(res, "rolreplication");
 i_rolbypassrls = PQfnumber(res, "rolbypassrls");
 i_rolcomment = PQfnumber(res, "rolcomment");
 i_is_current_user = PQfnumber(res, "is_current_user");

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Roles\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  const char *rolename;
  Oid auth_oid;

  auth_oid = atooid(PQgetvalue(res, i, i_oid));
  rolename = PQgetvalue(res, i, i_rolname);

  if (strncmp(rolename, "pg_", 3) == 0)
  {
   pg_log_warning("role name starting with \"pg_\" skipped (%s)",
         rolename);
   continue;
  }

  resetPQExpBuffer(buf);

  if (binary_upgrade)
  {
   appendPQExpBufferStr(buf, "\n-- For binary upgrade, must preserve pg_authid.oid\n");
   appendPQExpBuffer(buf,
         "SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('%u'::pg_catalog.oid);\n\n",
         auth_oid);
  }
  if (!binary_upgrade ||
   strcmp(PQgetvalue(res, i, i_is_current_user), "f") == 0)
   appendPQExpBuffer(buf, "CREATE ROLE %s;\n", fmtId(rolename));
  appendPQExpBuffer(buf, "ALTER ROLE %s WITH", fmtId(rolename));

  if (strcmp(PQgetvalue(res, i, i_rolsuper), "t") == 0)
   appendPQExpBufferStr(buf, " SUPERUSER");
  else
   appendPQExpBufferStr(buf, " NOSUPERUSER");

  if (strcmp(PQgetvalue(res, i, i_rolinherit), "t") == 0)
   appendPQExpBufferStr(buf, " INHERIT");
  else
   appendPQExpBufferStr(buf, " NOINHERIT");

  if (strcmp(PQgetvalue(res, i, i_rolcreaterole), "t") == 0)
   appendPQExpBufferStr(buf, " CREATEROLE");
  else
   appendPQExpBufferStr(buf, " NOCREATEROLE");

  if (strcmp(PQgetvalue(res, i, i_rolcreatedb), "t") == 0)
   appendPQExpBufferStr(buf, " CREATEDB");
  else
   appendPQExpBufferStr(buf, " NOCREATEDB");

  if (strcmp(PQgetvalue(res, i, i_rolcanlogin), "t") == 0)
   appendPQExpBufferStr(buf, " LOGIN");
  else
   appendPQExpBufferStr(buf, " NOLOGIN");

  if (strcmp(PQgetvalue(res, i, i_rolreplication), "t") == 0)
   appendPQExpBufferStr(buf, " REPLICATION");
  else
   appendPQExpBufferStr(buf, " NOREPLICATION");

  if (strcmp(PQgetvalue(res, i, i_rolbypassrls), "t") == 0)
   appendPQExpBufferStr(buf, " BYPASSRLS");
  else
   appendPQExpBufferStr(buf, " NOBYPASSRLS");

  if (strcmp(PQgetvalue(res, i, i_rolconnlimit), "-1") != 0)
   appendPQExpBuffer(buf, " CONNECTION LIMIT %s",
         PQgetvalue(res, i, i_rolconnlimit));


  if (!PQgetisnull(res, i, i_rolpassword) && !no_role_passwords)
  {
   appendPQExpBufferStr(buf, " PASSWORD ");
   appendStringLiteralConn(buf, PQgetvalue(res, i, i_rolpassword), conn);
  }

  if (!PQgetisnull(res, i, i_rolvaliduntil))
   appendPQExpBuffer(buf, " VALID UNTIL '%s'",
         PQgetvalue(res, i, i_rolvaliduntil));

  appendPQExpBufferStr(buf, ";\n");

  if (!no_comments && !PQgetisnull(res, i, i_rolcomment))
  {
   appendPQExpBuffer(buf, "COMMENT ON ROLE %s IS ", fmtId(rolename));
   appendStringLiteralConn(buf, PQgetvalue(res, i, i_rolcomment), conn);
   appendPQExpBufferStr(buf, ";\n");
  }

  if (!no_security_labels && server_version >= 90200)
   buildShSecLabels(conn, "pg_authid", auth_oid,
        "ROLE", rolename,
        buf);

  fprintf(OPF, "%s", buf->data);
 }






 for (i = 0; i < PQntuples(res); i++)
  dumpUserConfig(conn, PQgetvalue(res, i, i_rolname));

 PQclear(res);

 fprintf(OPF, "\n\n");

 destroyPQExpBuffer(buf);
}
