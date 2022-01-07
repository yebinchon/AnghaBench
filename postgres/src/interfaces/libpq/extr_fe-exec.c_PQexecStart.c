
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ status; int errorMessage; int asyncStatus; int pversion; } ;
struct TYPE_8__ {scalar_t__ resultStatus; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGconn ;
typedef scalar_t__ ExecStatusType ;


 scalar_t__ CONNECTION_BAD ;
 int PGASYNC_BUSY ;
 scalar_t__ PGRES_COPY_BOTH ;
 scalar_t__ PGRES_COPY_IN ;
 scalar_t__ PGRES_COPY_OUT ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQgetResult (TYPE_2__*) ;
 scalar_t__ PQputCopyEnd (TYPE_2__*,int ) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,int ) ;

__attribute__((used)) static bool
PQexecStart(PGconn *conn)
{
 PGresult *result;

 if (!conn)
  return 0;





 while ((result = PQgetResult(conn)) != ((void*)0))
 {
  ExecStatusType resultStatus = result->resultStatus;

  PQclear(result);
  if (resultStatus == PGRES_COPY_IN)
  {
   if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
   {

    if (PQputCopyEnd(conn,
         libpq_gettext("COPY terminated by new PQexec")) < 0)
     return 0;

   }
   else
   {

    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("COPY IN state must be terminated first\n"));
    return 0;
   }
  }
  else if (resultStatus == PGRES_COPY_OUT)
  {
   if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
   {





    conn->asyncStatus = PGASYNC_BUSY;

   }
   else
   {

    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("COPY OUT state must be terminated first\n"));
    return 0;
   }
  }
  else if (resultStatus == PGRES_COPY_BOTH)
  {

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("PQexec not allowed during COPY BOTH\n"));
   return 0;
  }

  if (conn->status == CONNECTION_BAD)
   return 0;
 }


 return 1;
}
