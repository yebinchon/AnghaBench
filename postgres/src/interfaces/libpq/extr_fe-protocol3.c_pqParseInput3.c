
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int data; } ;
struct TYPE_21__ {int inCursor; int inStart; int inEnd; scalar_t__ asyncStatus; int be_pid; int be_key; int errorMessage; int copy_already_done; TYPE_1__* result; int queryclass; TYPE_5__ workBuffer; int noticeHooks; } ;
struct TYPE_20__ {int resultStatus; int cmdStatus; } ;
typedef TYPE_2__ PGconn ;


 int CMDSTATUS_LEN ;
 scalar_t__ PGASYNC_BUSY ;
 scalar_t__ PGASYNC_COPY_BOTH ;
 scalar_t__ PGASYNC_COPY_IN ;
 scalar_t__ PGASYNC_COPY_OUT ;
 scalar_t__ PGASYNC_IDLE ;
 void* PGASYNC_READY ;
 int PGQUERY_DESCRIBE ;
 int PGQUERY_PREPARE ;
 int PGRES_COMMAND_OK ;
 int PGRES_COPY_BOTH ;
 int PGRES_COPY_IN ;
 int PGRES_COPY_OUT ;
 int PGRES_EMPTY_QUERY ;
 int PGRES_FATAL_ERROR ;
 int PGRES_TUPLES_OK ;
 void* PQmakeEmptyPGresult (TYPE_2__*,int ) ;
 int VALID_LONG_MESSAGE_TYPE (char) ;
 int getAnotherTuple (TYPE_2__*,int) ;
 int getCopyStart (TYPE_2__*,int ) ;
 scalar_t__ getNotify (TYPE_2__*) ;
 int getParamDescriptions (TYPE_2__*,int) ;
 scalar_t__ getParameterStatus (TYPE_2__*) ;
 int getReadyForQuery (TYPE_2__*) ;
 int getRowDescriptions (TYPE_2__*,int) ;
 int handleSyncLoss (TYPE_2__*,char,int) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqCheckInBufferSpace (int,TYPE_2__*) ;
 scalar_t__ pqGetErrorNotice3 (TYPE_2__*,int) ;
 scalar_t__ pqGetInt (int*,int,TYPE_2__*) ;
 scalar_t__ pqGetc (char*,TYPE_2__*) ;
 int pqGets (TYPE_5__*,TYPE_2__*) ;
 int pqInternalNotice (int *,char*,char) ;
 int pqSaveErrorResult (TYPE_2__*) ;
 int printfPQExpBuffer (int *,int ,...) ;
 int strlcpy (int ,int ,int ) ;

void
pqParseInput3(PGconn *conn)
{
 char id;
 int msgLength;
 int avail;




 for (;;)
 {




  conn->inCursor = conn->inStart;
  if (pqGetc(&id, conn))
   return;
  if (pqGetInt(&msgLength, 4, conn))
   return;






  if (msgLength < 4)
  {
   handleSyncLoss(conn, id, msgLength);
   return;
  }
  if (msgLength > 30000 && !VALID_LONG_MESSAGE_TYPE(id))
  {
   handleSyncLoss(conn, id, msgLength);
   return;
  }




  msgLength -= 4;
  avail = conn->inEnd - conn->inCursor;
  if (avail < msgLength)
  {
   if (pqCheckInBufferSpace(conn->inCursor + (size_t) msgLength,
          conn))
   {






    handleSyncLoss(conn, id, msgLength);
   }
   return;
  }
  if (id == 'A')
  {
   if (getNotify(conn))
    return;
  }
  else if (id == 'N')
  {
   if (pqGetErrorNotice3(conn, 0))
    return;
  }
  else if (conn->asyncStatus != PGASYNC_BUSY)
  {

   if (conn->asyncStatus != PGASYNC_IDLE)
    return;
   if (id == 'E')
   {
    if (pqGetErrorNotice3(conn, 0 ))
     return;
   }
   else if (id == 'S')
   {
    if (getParameterStatus(conn))
     return;
   }
   else
   {
    pqInternalNotice(&conn->noticeHooks,
         "message type 0x%02x arrived from server while idle",
         id);

    conn->inCursor += msgLength;
   }
  }
  else
  {



   switch (id)
   {
    case 'C':
     if (pqGets(&conn->workBuffer, conn))
      return;
     if (conn->result == ((void*)0))
     {
      conn->result = PQmakeEmptyPGresult(conn,
                 PGRES_COMMAND_OK);
      if (!conn->result)
      {
       printfPQExpBuffer(&conn->errorMessage,
             libpq_gettext("out of memory"));
       pqSaveErrorResult(conn);
      }
     }
     if (conn->result)
      strlcpy(conn->result->cmdStatus, conn->workBuffer.data,
        CMDSTATUS_LEN);
     conn->asyncStatus = PGASYNC_READY;
     break;
    case 'E':
     if (pqGetErrorNotice3(conn, 1))
      return;
     conn->asyncStatus = PGASYNC_READY;
     break;
    case 'Z':
     if (getReadyForQuery(conn))
      return;
     conn->asyncStatus = PGASYNC_IDLE;
     break;
    case 'I':
     if (conn->result == ((void*)0))
     {
      conn->result = PQmakeEmptyPGresult(conn,
                 PGRES_EMPTY_QUERY);
      if (!conn->result)
      {
       printfPQExpBuffer(&conn->errorMessage,
             libpq_gettext("out of memory"));
       pqSaveErrorResult(conn);
      }
     }
     conn->asyncStatus = PGASYNC_READY;
     break;
    case '1':

     if (conn->queryclass == PGQUERY_PREPARE)
     {
      if (conn->result == ((void*)0))
      {
       conn->result = PQmakeEmptyPGresult(conn,
                  PGRES_COMMAND_OK);
       if (!conn->result)
       {
        printfPQExpBuffer(&conn->errorMessage,
              libpq_gettext("out of memory"));
        pqSaveErrorResult(conn);
       }
      }
      conn->asyncStatus = PGASYNC_READY;
     }
     break;
    case '2':
    case '3':

     break;
    case 'S':
     if (getParameterStatus(conn))
      return;
     break;
    case 'K':






     if (pqGetInt(&(conn->be_pid), 4, conn))
      return;
     if (pqGetInt(&(conn->be_key), 4, conn))
      return;
     break;
    case 'T':
     if (conn->result != ((void*)0) &&
      conn->result->resultStatus == PGRES_FATAL_ERROR)
     {




      conn->inCursor += msgLength;
     }
     else if (conn->result == ((void*)0) ||
        conn->queryclass == PGQUERY_DESCRIBE)
     {

      if (getRowDescriptions(conn, msgLength))
       return;

      continue;
     }
     else
     {







      conn->asyncStatus = PGASYNC_READY;
      return;
     }
     break;
    case 'n':
     if (conn->queryclass == PGQUERY_DESCRIBE)
     {
      if (conn->result == ((void*)0))
      {
       conn->result = PQmakeEmptyPGresult(conn,
                  PGRES_COMMAND_OK);
       if (!conn->result)
       {
        printfPQExpBuffer(&conn->errorMessage,
              libpq_gettext("out of memory"));
        pqSaveErrorResult(conn);
       }
      }
      conn->asyncStatus = PGASYNC_READY;
     }
     break;
    case 't':
     if (getParamDescriptions(conn, msgLength))
      return;

     continue;
    case 'D':
     if (conn->result != ((void*)0) &&
      conn->result->resultStatus == PGRES_TUPLES_OK)
     {

      if (getAnotherTuple(conn, msgLength))
       return;

      continue;
     }
     else if (conn->result != ((void*)0) &&
        conn->result->resultStatus == PGRES_FATAL_ERROR)
     {




      conn->inCursor += msgLength;
     }
     else
     {

      printfPQExpBuffer(&conn->errorMessage,
            libpq_gettext("server sent data (\"D\" message) without prior row description (\"T\" message)\n"));
      pqSaveErrorResult(conn);

      conn->inCursor += msgLength;
     }
     break;
    case 'G':
     if (getCopyStart(conn, PGRES_COPY_IN))
      return;
     conn->asyncStatus = PGASYNC_COPY_IN;
     break;
    case 'H':
     if (getCopyStart(conn, PGRES_COPY_OUT))
      return;
     conn->asyncStatus = PGASYNC_COPY_OUT;
     conn->copy_already_done = 0;
     break;
    case 'W':
     if (getCopyStart(conn, PGRES_COPY_BOTH))
      return;
     conn->asyncStatus = PGASYNC_COPY_BOTH;
     conn->copy_already_done = 0;
     break;
    case 'd':






     conn->inCursor += msgLength;
     break;
    case 'c':







     break;
    default:
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext(
             "unexpected response from server; first received character was \"%c\"\n"),
           id);

     pqSaveErrorResult(conn);

     conn->asyncStatus = PGASYNC_READY;

     conn->inCursor += msgLength;
     break;
   }
  }

  if (conn->inCursor == conn->inStart + 5 + msgLength)
  {

   conn->inStart = conn->inCursor;
  }
  else
  {

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("message contents do not agree with length in message type \"%c\"\n"),
         id);

   pqSaveErrorResult(conn);
   conn->asyncStatus = PGASYNC_READY;

   conn->inStart += 5 + msgLength;
  }
 }
}
