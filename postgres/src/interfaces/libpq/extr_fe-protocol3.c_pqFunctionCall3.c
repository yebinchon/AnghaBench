
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {int inCursor; int inStart; int inEnd; int errorMessage; int result; } ;
struct TYPE_25__ {int integer; scalar_t__ ptr; } ;
struct TYPE_26__ {int len; TYPE_1__ u; scalar_t__ isint; } ;
typedef TYPE_2__ PQArgBlock ;
typedef int PGresult ;
typedef TYPE_3__ PGconn ;
typedef int Oid ;
typedef int ExecStatusType ;


 int PGRES_COMMAND_OK ;
 int PGRES_FATAL_ERROR ;
 int * PQmakeEmptyPGresult (TYPE_3__*,int ) ;
 int VALID_LONG_MESSAGE_TYPE (char) ;
 int getNotify (TYPE_3__*) ;
 int getParameterStatus (TYPE_3__*) ;
 int getReadyForQuery (TYPE_3__*) ;
 int handleSyncLoss (TYPE_3__*,char,int) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqCheckInBufferSpace (int,TYPE_3__*) ;
 scalar_t__ pqFlush (TYPE_3__*) ;
 int pqGetErrorNotice3 (TYPE_3__*,int) ;
 scalar_t__ pqGetInt (int*,int,TYPE_3__*) ;
 scalar_t__ pqGetc (char*,TYPE_3__*) ;
 int pqGetnchar (char*,int,TYPE_3__*) ;
 int * pqPrepareAsyncResult (TYPE_3__*) ;
 scalar_t__ pqPutInt (int,int,TYPE_3__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_3__*) ;
 scalar_t__ pqPutMsgStart (float,int,TYPE_3__*) ;
 scalar_t__ pqPutnchar (char*,int,TYPE_3__*) ;
 scalar_t__ pqReadData (TYPE_3__*) ;
 int pqSaveErrorResult (TYPE_3__*) ;
 scalar_t__ pqWait (int,int,TYPE_3__*) ;
 int printfPQExpBuffer (int *,int ,char) ;

PGresult *
pqFunctionCall3(PGconn *conn, Oid fnid,
    int *result_buf, int *actual_result_len,
    int result_is_int,
    const PQArgBlock *args, int nargs)
{
 bool needInput = 0;
 ExecStatusType status = PGRES_FATAL_ERROR;
 char id;
 int msgLength;
 int avail;
 int i;



 if (pqPutMsgStart('F', 0, conn) < 0 ||
  pqPutInt(fnid, 4, conn) < 0 ||
  pqPutInt(1, 2, conn) < 0 ||
  pqPutInt(1, 2, conn) < 0 ||
  pqPutInt(nargs, 2, conn) < 0)
 {

  return ((void*)0);
 }

 for (i = 0; i < nargs; ++i)
 {
  if (pqPutInt(args[i].len, 4, conn))
   return ((void*)0);
  if (args[i].len == -1)
   continue;

  if (args[i].isint)
  {
   if (pqPutInt(args[i].u.integer, args[i].len, conn))
    return ((void*)0);
  }
  else
  {
   if (pqPutnchar((char *) args[i].u.ptr, args[i].len, conn))
    return ((void*)0);
  }
 }

 if (pqPutInt(1, 2, conn) < 0)
  return ((void*)0);

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




  needInput = 1;

  conn->inCursor = conn->inStart;
  if (pqGetc(&id, conn))
   continue;
  if (pqGetInt(&msgLength, 4, conn))
   continue;






  if (msgLength < 4)
  {
   handleSyncLoss(conn, id, msgLength);
   break;
  }
  if (msgLength > 30000 && !VALID_LONG_MESSAGE_TYPE(id))
  {
   handleSyncLoss(conn, id, msgLength);
   break;
  }




  msgLength -= 4;
  avail = conn->inEnd - conn->inCursor;
  if (avail < msgLength)
  {




   if (pqCheckInBufferSpace(conn->inCursor + (size_t) msgLength,
          conn))
   {






    handleSyncLoss(conn, id, msgLength);
    break;
   }
   continue;
  }






  switch (id)
  {
   case 'V':
    if (pqGetInt(actual_result_len, 4, conn))
     continue;
    if (*actual_result_len != -1)
    {
     if (result_is_int)
     {
      if (pqGetInt(result_buf, *actual_result_len, conn))
       continue;
     }
     else
     {
      if (pqGetnchar((char *) result_buf,
            *actual_result_len,
            conn))
       continue;
     }
    }

    status = PGRES_COMMAND_OK;
    break;
   case 'E':
    if (pqGetErrorNotice3(conn, 1))
     continue;
    status = PGRES_FATAL_ERROR;
    break;
   case 'A':

    if (getNotify(conn))
     continue;
    break;
   case 'N':

    if (pqGetErrorNotice3(conn, 0))
     continue;
    break;
   case 'Z':
    if (getReadyForQuery(conn))
     continue;

    conn->inStart += 5 + msgLength;

    if (conn->result)
     return pqPrepareAsyncResult(conn);
    return PQmakeEmptyPGresult(conn, status);
   case 'S':
    if (getParameterStatus(conn))
     continue;
    break;
   default:

    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("protocol error: id=0x%x\n"),
          id);
    pqSaveErrorResult(conn);

    conn->inStart += 5 + msgLength;
    return pqPrepareAsyncResult(conn);
  }


  conn->inStart += 5 + msgLength;
  needInput = 0;
 }






 pqSaveErrorResult(conn);
 return pqPrepareAsyncResult(conn);
}
