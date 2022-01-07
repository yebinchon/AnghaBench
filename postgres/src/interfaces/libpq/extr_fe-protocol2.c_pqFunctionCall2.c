
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {int inCursor; int inStart; int errorMessage; int result; } ;
struct TYPE_22__ {int integer; scalar_t__ ptr; } ;
struct TYPE_23__ {int len; TYPE_1__ u; scalar_t__ isint; } ;
typedef TYPE_2__ PQArgBlock ;
typedef int PGresult ;
typedef TYPE_3__ PGconn ;
typedef int Oid ;
typedef int ExecStatusType ;


 int PGRES_COMMAND_OK ;
 int PGRES_FATAL_ERROR ;
 int * PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 int getNotify (TYPE_3__*) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_3__*) ;
 int pqGetErrorNotice2 (TYPE_3__*,int) ;
 int pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqGetc (char*,TYPE_3__*) ;
 int pqGetnchar (char*,int,TYPE_3__*) ;
 int * pqPrepareAsyncResult (TYPE_3__*) ;
 scalar_t__ pqPutInt (int,int,TYPE_3__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_3__*) ;
 scalar_t__ pqPutMsgStart (float,int,TYPE_3__*) ;
 scalar_t__ pqPutnchar (char*,int,TYPE_3__*) ;
 scalar_t__ pqPuts (char*,TYPE_3__*) ;
 scalar_t__ pqReadData (TYPE_3__*) ;
 int pqSaveErrorResult (TYPE_3__*) ;
 scalar_t__ pqWait (int,int,TYPE_3__*) ;
 int printfPQExpBuffer (int *,int ,char) ;

PGresult *
pqFunctionCall2(PGconn *conn, Oid fnid,
    int *result_buf, int *actual_result_len,
    int result_is_int,
    const PQArgBlock *args, int nargs)
{
 bool needInput = 0;
 ExecStatusType status = PGRES_FATAL_ERROR;
 char id;
 int i;



 if (pqPutMsgStart('F', 0, conn) < 0 ||
  pqPuts(" ", conn) < 0 ||
  pqPutInt(fnid, 4, conn) != 0 ||
  pqPutInt(nargs, 4, conn) != 0)
 {

  return ((void*)0);
 }

 for (i = 0; i < nargs; ++i)
 {
  if (pqPutInt(args[i].len, 4, conn))
   return ((void*)0);

  if (args[i].isint)
  {
   if (pqPutInt(args[i].u.integer, 4, conn))
    return ((void*)0);
  }
  else
  {
   if (pqPutnchar((char *) args[i].u.ptr, args[i].len, conn))
    return ((void*)0);
  }
 }

 if (pqPutMsgEnd(conn) < 0 ||
  pqFlush(conn))
  return ((void*)0);

 for (;;)
 {
  if (needInput)
  {

   if (pqWait(1, 0, conn) ||
    pqReadData(conn) < 0)
    break;
  }




  conn->inCursor = conn->inStart;
  needInput = 1;

  if (pqGetc(&id, conn))
   continue;






  switch (id)
  {
   case 'V':
    if (pqGetc(&id, conn))
     continue;
    if (id == 'G')
    {

     if (pqGetInt(actual_result_len, 4, conn))
      continue;
     if (result_is_int)
     {
      if (pqGetInt(result_buf, 4, conn))
       continue;
     }
     else
     {
      if (pqGetnchar((char *) result_buf,
            *actual_result_len,
            conn))
       continue;
     }
     if (pqGetc(&id, conn))
      continue;
    }
    if (id == '0')
    {

     status = PGRES_COMMAND_OK;
    }
    else
    {

     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("protocol error: id=0x%x\n"),
           id);
     pqSaveErrorResult(conn);
     conn->inStart = conn->inCursor;
     return pqPrepareAsyncResult(conn);
    }
    break;
   case 'E':
    if (pqGetErrorNotice2(conn, 1))
     continue;
    status = PGRES_FATAL_ERROR;
    break;
   case 'A':

    if (getNotify(conn))
     continue;
    break;
   case 'N':

    if (pqGetErrorNotice2(conn, 0))
     continue;
    break;
   case 'Z':

    conn->inStart = conn->inCursor;

    if (conn->result)
     return pqPrepareAsyncResult(conn);
    return PQmakeEmptyPGresult(conn, status);
   default:

    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("protocol error: id=0x%x\n"),
          id);
    pqSaveErrorResult(conn);
    conn->inStart = conn->inCursor;
    return pqPrepareAsyncResult(conn);
  }

  conn->inStart = conn->inCursor;
  needInput = 0;
 }






 pqSaveErrorResult(conn);
 return pqPrepareAsyncResult(conn);
}
