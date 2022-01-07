
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;


 int OPF ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char*,...) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendStringLiteralConn (TYPE_1__*,char*,int *) ;
 int atooid (char*) ;
 int buildACLCommands (char*,int *,int *,char*,char*,char*,char*,char*,int,TYPE_1__*) ;
 int buildShSecLabels (int *,char*,int ,char*,char*,TYPE_1__*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int * executeQuery (int *,char*) ;
 int exit_nicely (int) ;
 char* fmtId (char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int no_comments ;
 int no_security_labels ;
 int pg_log_error (char*,char*,char*) ;
 char* pg_strdup (char*) ;
 int server_version ;
 int skip_acls ;

__attribute__((used)) static void
dumpTablespaces(PGconn *conn)
{
 PGresult *res;
 int i;
 if (server_version >= 90600)
  res = executeQuery(conn, "SELECT oid, spcname, "
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
  res = executeQuery(conn, "SELECT oid, spcname, "
         "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
         "pg_catalog.pg_tablespace_location(oid), "
         "spcacl, '' as rspcacl, "
         "array_to_string(spcoptions, ', '),"
         "pg_catalog.shobj_description(oid, 'pg_tablespace') "
         "FROM pg_catalog.pg_tablespace "
         "WHERE spcname !~ '^pg_' "
         "ORDER BY 1");
 else if (server_version >= 90000)
  res = executeQuery(conn, "SELECT oid, spcname, "
         "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
         "spclocation, spcacl, '' as rspcacl, "
         "array_to_string(spcoptions, ', '),"
         "pg_catalog.shobj_description(oid, 'pg_tablespace') "
         "FROM pg_catalog.pg_tablespace "
         "WHERE spcname !~ '^pg_' "
         "ORDER BY 1");
 else if (server_version >= 80200)
  res = executeQuery(conn, "SELECT oid, spcname, "
         "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
         "spclocation, spcacl, '' as rspcacl, null, "
         "pg_catalog.shobj_description(oid, 'pg_tablespace') "
         "FROM pg_catalog.pg_tablespace "
         "WHERE spcname !~ '^pg_' "
         "ORDER BY 1");
 else
  res = executeQuery(conn, "SELECT oid, spcname, "
         "pg_catalog.pg_get_userbyid(spcowner) AS spcowner, "
         "spclocation, spcacl, '' as rspcacl, "
         "null, null "
         "FROM pg_catalog.pg_tablespace "
         "WHERE spcname !~ '^pg_' "
         "ORDER BY 1");

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Tablespaces\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  PQExpBuffer buf = createPQExpBuffer();
  Oid spcoid = atooid(PQgetvalue(res, i, 0));
  char *spcname = PQgetvalue(res, i, 1);
  char *spcowner = PQgetvalue(res, i, 2);
  char *spclocation = PQgetvalue(res, i, 3);
  char *spcacl = PQgetvalue(res, i, 4);
  char *rspcacl = PQgetvalue(res, i, 5);
  char *spcoptions = PQgetvalue(res, i, 6);
  char *spccomment = PQgetvalue(res, i, 7);
  char *fspcname;


  fspcname = pg_strdup(fmtId(spcname));

  appendPQExpBuffer(buf, "CREATE TABLESPACE %s", fspcname);
  appendPQExpBuffer(buf, " OWNER %s", fmtId(spcowner));

  appendPQExpBufferStr(buf, " LOCATION ");
  appendStringLiteralConn(buf, spclocation, conn);
  appendPQExpBufferStr(buf, ";\n");

  if (spcoptions && spcoptions[0] != '\0')
   appendPQExpBuffer(buf, "ALTER TABLESPACE %s SET (%s);\n",
         fspcname, spcoptions);

  if (!skip_acls &&
   !buildACLCommands(fspcname, ((void*)0), ((void*)0), "TABLESPACE",
         spcacl, rspcacl,
         spcowner, "", server_version, buf))
  {
   pg_log_error("could not parse ACL list (%s) for tablespace \"%s\"",
       spcacl, spcname);
   PQfinish(conn);
   exit_nicely(1);
  }

  if (!no_comments && spccomment && spccomment[0] != '\0')
  {
   appendPQExpBuffer(buf, "COMMENT ON TABLESPACE %s IS ", fspcname);
   appendStringLiteralConn(buf, spccomment, conn);
   appendPQExpBufferStr(buf, ";\n");
  }

  if (!no_security_labels && server_version >= 90200)
   buildShSecLabels(conn, "pg_tablespace", spcoid,
        "TABLESPACE", spcname,
        buf);

  fprintf(OPF, "%s", buf->data);

  free(fspcname);
  destroyPQExpBuffer(buf);
 }

 PQclear(res);
 fprintf(OPF, "\n\n");
}
