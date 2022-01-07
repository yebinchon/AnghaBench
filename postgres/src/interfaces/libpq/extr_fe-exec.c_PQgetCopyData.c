
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ asyncStatus; int pversion; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_COPY_BOTH ;
 scalar_t__ PGASYNC_COPY_OUT ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int libpq_gettext (char*) ;
 int pqGetCopyData2 (TYPE_1__*,char**,int) ;
 int pqGetCopyData3 (TYPE_1__*,char**,int) ;
 int printfPQExpBuffer (int *,int ) ;

int
PQgetCopyData(PGconn *conn, char **buffer, int async)
{
 *buffer = ((void*)0);
 if (!conn)
  return -2;
 if (conn->asyncStatus != PGASYNC_COPY_OUT &&
  conn->asyncStatus != PGASYNC_COPY_BOTH)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("no COPY in progress\n"));
  return -2;
 }
 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  return pqGetCopyData3(conn, buffer, async);
 else
  return pqGetCopyData2(conn, buffer, async);
}
