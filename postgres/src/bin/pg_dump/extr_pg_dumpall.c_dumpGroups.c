
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int OPF ;
 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int * executeQuery (int *,char*) ;
 char* fmtId (char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* pg_strdup (char*) ;
 int printfPQExpBuffer (TYPE_1__*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
dumpGroups(PGconn *conn)
{
 PQExpBuffer buf = createPQExpBuffer();
 PGresult *res;
 int i;

 res = executeQuery(conn,
        "SELECT groname, grolist FROM pg_group ORDER BY 1");

 if (PQntuples(res) > 0)
  fprintf(OPF, "--\n-- Role memberships\n--\n\n");

 for (i = 0; i < PQntuples(res); i++)
 {
  char *groname = PQgetvalue(res, i, 0);
  char *grolist = PQgetvalue(res, i, 1);
  PGresult *res2;
  int j;




  if (strlen(grolist) < 3)
   continue;

  grolist = pg_strdup(grolist);
  grolist[0] = '(';
  grolist[strlen(grolist) - 1] = ')';
  printfPQExpBuffer(buf,
        "SELECT usename FROM pg_shadow "
        "WHERE usesysid IN %s ORDER BY 1",
        grolist);
  free(grolist);

  res2 = executeQuery(conn, buf->data);

  for (j = 0; j < PQntuples(res2); j++)
  {
   char *usename = PQgetvalue(res2, j, 0);





   if (strcmp(groname, usename) == 0)
    continue;

   fprintf(OPF, "GRANT %s", fmtId(groname));
   fprintf(OPF, " TO %s;\n", fmtId(usename));
  }

  PQclear(res2);
 }

 PQclear(res);
 destroyPQExpBuffer(buf);

 fprintf(OPF, "\n\n");
}
