
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int Assert (int ) ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,int ) ;
 scalar_t__ PQnfields (int *) ;
 scalar_t__ PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char const*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,char const*,scalar_t__,...) ;

bool
DropReplicationSlot(PGconn *conn, const char *slot_name)
{
 PQExpBuffer query;
 PGresult *res;

 Assert(slot_name != ((void*)0));

 query = createPQExpBuffer();


 appendPQExpBuffer(query, "DROP_REPLICATION_SLOT \"%s\"",
       slot_name);
 res = PQexec(conn, query->data);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
 {
  pg_log_error("could not send replication command \"%s\": %s",
      query->data, PQerrorMessage(conn));

  destroyPQExpBuffer(query);
  PQclear(res);
  return 0;
 }

 if (PQntuples(res) != 0 || PQnfields(res) != 0)
 {
  pg_log_error("could not drop replication slot \"%s\": got %d rows and %d fields, expected %d rows and %d fields",
      slot_name,
      PQntuples(res), PQnfields(res), 0, 0);

  destroyPQExpBuffer(query);
  PQclear(res);
  return 0;
 }

 destroyPQExpBuffer(query);
 PQclear(res);
 return 1;
}
