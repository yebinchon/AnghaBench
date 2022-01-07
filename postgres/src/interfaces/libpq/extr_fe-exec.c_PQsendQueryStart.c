
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; scalar_t__ asyncStatus; int singleRowMode; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGASYNC_IDLE ;
 int libpq_gettext (char*) ;
 int pqClearAsyncResult (TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 int resetPQExpBuffer (int *) ;

__attribute__((used)) static bool
PQsendQueryStart(PGconn *conn)
{
 if (!conn)
  return 0;


 resetPQExpBuffer(&conn->errorMessage);


 if (conn->status != CONNECTION_OK)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("no connection to the server\n"));
  return 0;
 }

 if (conn->asyncStatus != PGASYNC_IDLE)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("another command is already in progress\n"));
  return 0;
 }


 pqClearAsyncResult(conn);


 conn->singleRowMode = 0;


 return 1;
}
