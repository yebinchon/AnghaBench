
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int errorMessage; int status; void* pgpass; void* pguser; void* pgtty; void* pgoptions; void* pgport; void* pghost; void* dbName; } ;
typedef TYPE_1__ PGconn ;


 int CONNECTION_BAD ;
 int connectDBComplete (TYPE_1__*) ;
 scalar_t__ connectDBStart (TYPE_1__*) ;
 int connectOptions1 (TYPE_1__*,char const*) ;
 int connectOptions2 (TYPE_1__*) ;
 int free (void*) ;
 int libpq_gettext (char*) ;
 TYPE_1__* makeEmptyPGconn () ;
 int printfPQExpBuffer (int *,int ) ;
 scalar_t__ recognized_connection_string (char const*) ;
 void* strdup (char const*) ;

PGconn *
PQsetdbLogin(const char *pghost, const char *pgport, const char *pgoptions,
    const char *pgtty, const char *dbName, const char *login,
    const char *pwd)
{
 PGconn *conn;




 conn = makeEmptyPGconn();
 if (conn == ((void*)0))
  return ((void*)0);





 if (dbName && recognized_connection_string(dbName))
 {
  if (!connectOptions1(conn, dbName))
   return conn;
 }
 else
 {




  if (!connectOptions1(conn, ""))
   return conn;


  if (dbName && dbName[0] != '\0')
  {
   if (conn->dbName)
    free(conn->dbName);
   conn->dbName = strdup(dbName);
   if (!conn->dbName)
    goto oom_error;
  }
 }





 if (pghost && pghost[0] != '\0')
 {
  if (conn->pghost)
   free(conn->pghost);
  conn->pghost = strdup(pghost);
  if (!conn->pghost)
   goto oom_error;
 }

 if (pgport && pgport[0] != '\0')
 {
  if (conn->pgport)
   free(conn->pgport);
  conn->pgport = strdup(pgport);
  if (!conn->pgport)
   goto oom_error;
 }

 if (pgoptions && pgoptions[0] != '\0')
 {
  if (conn->pgoptions)
   free(conn->pgoptions);
  conn->pgoptions = strdup(pgoptions);
  if (!conn->pgoptions)
   goto oom_error;
 }

 if (pgtty && pgtty[0] != '\0')
 {
  if (conn->pgtty)
   free(conn->pgtty);
  conn->pgtty = strdup(pgtty);
  if (!conn->pgtty)
   goto oom_error;
 }

 if (login && login[0] != '\0')
 {
  if (conn->pguser)
   free(conn->pguser);
  conn->pguser = strdup(login);
  if (!conn->pguser)
   goto oom_error;
 }

 if (pwd && pwd[0] != '\0')
 {
  if (conn->pgpass)
   free(conn->pgpass);
  conn->pgpass = strdup(pwd);
  if (!conn->pgpass)
   goto oom_error;
 }




 if (!connectOptions2(conn))
  return conn;




 if (connectDBStart(conn))
  (void) connectDBComplete(conn);

 return conn;

oom_error:
 conn->status = CONNECTION_BAD;
 printfPQExpBuffer(&conn->errorMessage,
       libpq_gettext("out of memory\n"));
 return conn;
}
