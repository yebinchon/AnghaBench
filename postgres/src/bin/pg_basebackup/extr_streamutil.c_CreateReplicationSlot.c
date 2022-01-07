
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int Assert (int) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PG_DIAG_SQLSTATE ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,int ) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 char* PQresultErrorField (int *,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQserverVersion (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char const*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,char const*,int,...) ;
 scalar_t__ strcmp (char const*,int ) ;

bool
CreateReplicationSlot(PGconn *conn, const char *slot_name, const char *plugin,
       bool is_temporary, bool is_physical, bool reserve_wal,
       bool slot_exists_ok)
{
 PQExpBuffer query;
 PGresult *res;

 query = createPQExpBuffer();

 Assert((is_physical && plugin == ((void*)0)) ||
     (!is_physical && plugin != ((void*)0)));
 Assert(slot_name != ((void*)0));


 appendPQExpBuffer(query, "CREATE_REPLICATION_SLOT \"%s\"", slot_name);
 if (is_temporary)
  appendPQExpBufferStr(query, " TEMPORARY");
 if (is_physical)
 {
  appendPQExpBufferStr(query, " PHYSICAL");
  if (reserve_wal)
   appendPQExpBufferStr(query, " RESERVE_WAL");
 }
 else
 {
  appendPQExpBuffer(query, " LOGICAL \"%s\"", plugin);
  if (PQserverVersion(conn) >= 100000)

   appendPQExpBufferStr(query, " NOEXPORT_SNAPSHOT");
 }

 res = PQexec(conn, query->data);
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  const char *sqlstate = PQresultErrorField(res, PG_DIAG_SQLSTATE);

  if (slot_exists_ok &&
   sqlstate &&
   strcmp(sqlstate, ERRCODE_DUPLICATE_OBJECT) == 0)
  {
   destroyPQExpBuffer(query);
   PQclear(res);
   return 1;
  }
  else
  {
   pg_log_error("could not send replication command \"%s\": %s",
       query->data, PQerrorMessage(conn));

   destroyPQExpBuffer(query);
   PQclear(res);
   return 0;
  }
 }

 if (PQntuples(res) != 1 || PQnfields(res) != 4)
 {
  pg_log_error("could not create replication slot \"%s\": got %d rows and %d fields, expected %d rows and %d fields",
      slot_name,
      PQntuples(res), PQnfields(res), 1, 4);

  destroyPQExpBuffer(query);
  PQclear(res);
  return 0;
 }

 destroyPQExpBuffer(query);
 PQclear(res);
 return 1;
}
