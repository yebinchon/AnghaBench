
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_26__ {int data; } ;
struct TYPE_25__ {TYPE_2__* result; TYPE_3__* conn; } ;
struct TYPE_24__ {scalar_t__ asyncStatus; TYPE_6__ errorMessage; scalar_t__ write_failed; } ;
struct TYPE_23__ {int nEvents; TYPE_1__* events; int resultStatus; } ;
struct TYPE_22__ {int name; int resultInitialized; int passThrough; int (* proc ) (int ,TYPE_4__*,int ) ;} ;
typedef TYPE_2__ PGresult ;
typedef TYPE_3__ PGconn ;
typedef TYPE_4__ PGEventResultCreate ;


 scalar_t__ PGASYNC_BUSY ;





 int PGEVT_RESULTCREATE ;
 int PGRES_COPY_BOTH ;
 int PGRES_COPY_IN ;
 int PGRES_COPY_OUT ;
 int PGRES_FATAL_ERROR ;
 TYPE_2__* PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 TYPE_2__* getCopyResult (TYPE_3__*,int ) ;
 int libpq_gettext (char*) ;
 int parseInput (TYPE_3__*) ;
 int pqFlush (TYPE_3__*) ;
 TYPE_2__* pqPrepareAsyncResult (TYPE_3__*) ;
 scalar_t__ pqReadData (TYPE_3__*) ;
 int pqSaveErrorResult (TYPE_3__*) ;
 int pqSaveWriteError (TYPE_3__*) ;
 int pqSetResultError (TYPE_2__*,int ) ;
 scalar_t__ pqWait (int,int,TYPE_3__*) ;
 int printfPQExpBuffer (TYPE_6__*,int ,int) ;
 int stub1 (int ,TYPE_4__*,int ) ;

PGresult *
PQgetResult(PGconn *conn)
{
 PGresult *res;

 if (!conn)
  return ((void*)0);


 parseInput(conn);


 while (conn->asyncStatus == PGASYNC_BUSY)
 {
  int flushResult;





  while ((flushResult = pqFlush(conn)) > 0)
  {
   if (pqWait(0, 1, conn))
   {
    flushResult = -1;
    break;
   }
  }
  if (flushResult ||
   pqWait(1, 0, conn) ||
   pqReadData(conn) < 0)
  {




   pqSaveErrorResult(conn);
   conn->asyncStatus = 129;
   return pqPrepareAsyncResult(conn);
  }


  parseInput(conn);





  if (conn->write_failed && conn->asyncStatus == PGASYNC_BUSY)
  {
   pqSaveWriteError(conn);
   conn->asyncStatus = 129;
   return pqPrepareAsyncResult(conn);
  }
 }


 switch (conn->asyncStatus)
 {
  case 129:
   res = ((void*)0);
   break;
  case 128:
   res = pqPrepareAsyncResult(conn);

   conn->asyncStatus = PGASYNC_BUSY;
   break;
  case 131:
   res = getCopyResult(conn, PGRES_COPY_IN);
   break;
  case 130:
   res = getCopyResult(conn, PGRES_COPY_OUT);
   break;
  case 132:
   res = getCopyResult(conn, PGRES_COPY_BOTH);
   break;
  default:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("unexpected asyncStatus: %d\n"),
         (int) conn->asyncStatus);
   res = PQmakeEmptyPGresult(conn, PGRES_FATAL_ERROR);
   break;
 }

 if (res)
 {
  int i;

  for (i = 0; i < res->nEvents; i++)
  {
   PGEventResultCreate evt;

   evt.conn = conn;
   evt.result = res;
   if (!res->events[i].proc(PGEVT_RESULTCREATE, &evt,
          res->events[i].passThrough))
   {
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("PGEventProc \"%s\" failed during PGEVT_RESULTCREATE event\n"),
          res->events[i].name);
    pqSetResultError(res, conn->errorMessage.data);
    res->resultStatus = PGRES_FATAL_ERROR;
    break;
   }
   res->events[i].resultInitialized = 1;
  }
 }

 return res;
}
