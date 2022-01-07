
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int remoteVersion; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;
typedef TYPE_2__ Archive ;


 int * ExecuteSqlQuery (TYPE_2__*,int ,int ) ;
 int * GetConnection (TYPE_2__*) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQgetisnull (int *,int ,int ) ;
 char const* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int makeAlterConfigCommand (int *,char const*,char*,char const*,char*,char const*,TYPE_1__*) ;
 int printfPQExpBuffer (TYPE_1__*,char*,int,...) ;

__attribute__((used)) static void
dumpDatabaseConfig(Archive *AH, PQExpBuffer outbuf,
       const char *dbname, Oid dboid)
{
 PGconn *conn = GetConnection(AH);
 PQExpBuffer buf = createPQExpBuffer();
 PGresult *res;
 int count = 1;





 for (;;)
 {
  if (AH->remoteVersion >= 90000)
   printfPQExpBuffer(buf, "SELECT setconfig[%d] FROM pg_db_role_setting "
         "WHERE setrole = 0 AND setdatabase = '%u'::oid",
         count, dboid);
  else
   printfPQExpBuffer(buf, "SELECT datconfig[%d] FROM pg_database WHERE oid = '%u'::oid", count, dboid);

  res = ExecuteSqlQuery(AH, buf->data, PGRES_TUPLES_OK);

  if (PQntuples(res) == 1 &&
   !PQgetisnull(res, 0, 0))
  {
   makeAlterConfigCommand(conn, PQgetvalue(res, 0, 0),
           "DATABASE", dbname, ((void*)0), ((void*)0),
           outbuf);
   PQclear(res);
   count++;
  }
  else
  {
   PQclear(res);
   break;
  }
 }


 if (AH->remoteVersion >= 90000)
 {

  printfPQExpBuffer(buf, "SELECT rolname, unnest(setconfig) "
        "FROM pg_db_role_setting s, pg_roles r "
        "WHERE setrole = r.oid AND setdatabase = '%u'::oid",
        dboid);

  res = ExecuteSqlQuery(AH, buf->data, PGRES_TUPLES_OK);

  if (PQntuples(res) > 0)
  {
   int i;

   for (i = 0; i < PQntuples(res); i++)
    makeAlterConfigCommand(conn, PQgetvalue(res, i, 1),
            "ROLE", PQgetvalue(res, i, 0),
            "DATABASE", dbname,
            outbuf);
  }

  PQclear(res);
 }

 destroyPQExpBuffer(buf);
}
