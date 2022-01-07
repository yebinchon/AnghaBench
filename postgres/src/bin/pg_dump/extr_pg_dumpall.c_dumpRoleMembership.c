
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int OPF ;
 int PQclear (int *) ;
 int PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int * executeQuery (int *,int ) ;
 char* fmtId (char*) ;
 int fprintf (int ,char*,...) ;
 int printfPQExpBuffer (TYPE_1__*,char*,int ,int ,int ) ;
 int role_catalog ;

__attribute__((used)) static void
dumpRoleMembership(PGconn *conn)
{
 PQExpBuffer buf = createPQExpBuffer();
 PGresult *res;
 int i;

 printfPQExpBuffer(buf, "SELECT ur.rolname AS roleid, "
       "um.rolname AS member, "
       "a.admin_option, "
       "ug.rolname AS grantor "
       "FROM pg_auth_members a "
       "LEFT JOIN %s ur on ur.oid = a.roleid "
       "LEFT JOIN %s um on um.oid = a.member "
       "LEFT JOIN %s ug on ug.oid = a.grantor "
       "WHERE NOT (ur.rolname ~ '^pg_' AND um.rolname ~ '^pg_')"
       "ORDER BY 1,2,3", role_catalog, role_catalog, role_catalog);
 res = executeQuery(conn, buf->data);

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Role memberships\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  char *roleid = PQgetvalue(res, i, 0);
  char *member = PQgetvalue(res, i, 1);
  char *option = PQgetvalue(res, i, 2);

  fprintf(OPF, "GRANT %s", fmtId(roleid));
  fprintf(OPF, " TO %s", fmtId(member));
  if (*option == 't')
   fprintf(OPF, " WITH ADMIN OPTION");





  if (!PQgetisnull(res, i, 3))
  {
   char *grantor = PQgetvalue(res, i, 3);

   fprintf(OPF, " GRANTED BY %s", fmtId(grantor));
  }
  fprintf(OPF, ";\n");
 }

 PQclear(res);
 destroyPQExpBuffer(buf);

 fprintf(OPF, "\n\n");
}
