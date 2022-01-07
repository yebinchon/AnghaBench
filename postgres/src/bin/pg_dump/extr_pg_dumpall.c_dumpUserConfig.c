
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int OPF ;
 int PQclear (int *) ;
 int PQgetisnull (int *,int ,int ) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQntuples (int *) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendStringLiteralConn (TYPE_1__*,char const*,int *) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int * executeQuery (int *,char const*) ;
 int fprintf (int ,char*,...) ;
 int makeAlterConfigCommand (int *,int ,char*,char const*,int *,int *,TYPE_1__*) ;
 int printfPQExpBuffer (TYPE_1__*,char*,int,...) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int role_catalog ;
 int server_version ;

__attribute__((used)) static void
dumpUserConfig(PGconn *conn, const char *username)
{
 PQExpBuffer buf = createPQExpBuffer();
 int count = 1;
 bool first = 1;

 for (;;)
 {
  PGresult *res;

  if (server_version >= 90000)
   printfPQExpBuffer(buf, "SELECT setconfig[%d] FROM pg_db_role_setting WHERE "
         "setdatabase = 0 AND setrole = "
         "(SELECT oid FROM %s WHERE rolname = ", count, role_catalog);
  else if (server_version >= 80100)
   printfPQExpBuffer(buf, "SELECT rolconfig[%d] FROM %s WHERE rolname = ", count, role_catalog);
  else
   printfPQExpBuffer(buf, "SELECT useconfig[%d] FROM pg_shadow WHERE usename = ", count);
  appendStringLiteralConn(buf, username, conn);
  if (server_version >= 90000)
   appendPQExpBufferChar(buf, ')');

  res = executeQuery(conn, buf->data);
  if (PQntuples(res) == 1 &&
   !PQgetisnull(res, 0, 0))
  {

   if (first)
   {
    fprintf(OPF, "--\n-- User Configurations\n--\n\n");
    first = 0;
   }

   fprintf(OPF, "--\n-- User Config \"%s\"\n--\n\n", username);
   resetPQExpBuffer(buf);
   makeAlterConfigCommand(conn, PQgetvalue(res, 0, 0),
           "ROLE", username, ((void*)0), ((void*)0),
           buf);
   fprintf(OPF, "%s", buf->data);
   PQclear(res);
   count++;
  }
  else
  {
   PQclear(res);
   break;
  }
 }

 destroyPQExpBuffer(buf);
}
