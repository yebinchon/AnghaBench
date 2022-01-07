
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int data; } ;
struct TYPE_16__ {scalar_t__ asyncStatus; int inCursor; int inStart; int inEnd; int errorMessage; int noticeHooks; TYPE_1__* result; TYPE_5__ workBuffer; int be_key; int be_pid; } ;
struct TYPE_15__ {int cmdStatus; } ;
typedef TYPE_2__ PGconn ;


 int CMDSTATUS_LEN ;
 scalar_t__ PGASYNC_BUSY ;
 scalar_t__ PGASYNC_COPY_IN ;
 scalar_t__ PGASYNC_COPY_OUT ;
 scalar_t__ PGASYNC_IDLE ;
 void* PGASYNC_READY ;
 int PGRES_COMMAND_OK ;
 int PGRES_EMPTY_QUERY ;
 void* PQmakeEmptyPGresult (TYPE_2__*,int ) ;
 int checkXactStatus (TYPE_2__*,int ) ;
 int getAnotherTuple (TYPE_2__*,int) ;
 scalar_t__ getNotify (TYPE_2__*) ;
 int getRowDescriptions (TYPE_2__*) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqGetErrorNotice2 (TYPE_2__*,int) ;
 int pqGetInt (int *,int,TYPE_2__*) ;
 scalar_t__ pqGetc (char*,TYPE_2__*) ;
 int pqGets (TYPE_5__*,TYPE_2__*) ;
 int pqInternalNotice (int *,char*,...) ;
 int pqSaveErrorResult (TYPE_2__*) ;
 int printfPQExpBuffer (int *,int ,...) ;
 int strlcpy (int ,int ,int ) ;

void
pqParseInput2(PGconn *conn)
{
 char id;




 for (;;)
 {






  if (conn->asyncStatus == PGASYNC_COPY_OUT)
   return;




  conn->inCursor = conn->inStart;
  if (pqGetc(&id, conn))
   return;
  if (id == 'A')
  {
   if (getNotify(conn))
    return;
  }
  else if (id == 'N')
  {
   if (pqGetErrorNotice2(conn, 0))
    return;
  }
  else if (conn->asyncStatus != PGASYNC_BUSY)
  {

   if (conn->asyncStatus != PGASYNC_IDLE)
    return;
   if (id == 'E')
   {
    if (pqGetErrorNotice2(conn, 0 ))
     return;
   }
   else
   {
    pqInternalNotice(&conn->noticeHooks,
         "message type 0x%02x arrived from server while idle",
         id);

    conn->inStart = conn->inEnd;
    break;
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
     {
      strlcpy(conn->result->cmdStatus, conn->workBuffer.data,
        CMDSTATUS_LEN);
     }
     checkXactStatus(conn, conn->workBuffer.data);
     conn->asyncStatus = PGASYNC_READY;
     break;
    case 'E':
     if (pqGetErrorNotice2(conn, 1))
      return;
     conn->asyncStatus = PGASYNC_READY;
     break;
    case 'Z':
     conn->asyncStatus = PGASYNC_IDLE;
     break;
    case 'I':

     if (pqGetc(&id, conn))
      return;
     if (id != '\0')
      pqInternalNotice(&conn->noticeHooks,
           "unexpected character %c following empty query response (\"I\" message)",
           id);
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
    case 'K':






     if (pqGetInt(&(conn->be_pid), 4, conn))
      return;
     if (pqGetInt(&(conn->be_key), 4, conn))
      return;
     break;
    case 'P':
     if (pqGets(&conn->workBuffer, conn))
      return;

     break;
    case 'T':
     if (conn->result == ((void*)0))
     {

      if (getRowDescriptions(conn))
       return;

      continue;
     }
     else
     {







      conn->asyncStatus = PGASYNC_READY;
      return;
     }
     break;
    case 'D':
     if (conn->result != ((void*)0))
     {

      if (getAnotherTuple(conn, 0))
       return;

      continue;
     }
     else
     {
      pqInternalNotice(&conn->noticeHooks,
           "server sent data (\"D\" message) without prior row description (\"T\" message)");

      conn->inStart = conn->inEnd;
      return;
     }
     break;
    case 'B':
     if (conn->result != ((void*)0))
     {

      if (getAnotherTuple(conn, 1))
       return;

      continue;
     }
     else
     {
      pqInternalNotice(&conn->noticeHooks,
           "server sent binary data (\"B\" message) without prior row description (\"T\" message)");

      conn->inStart = conn->inEnd;
      return;
     }
     break;
    case 'G':
     conn->asyncStatus = PGASYNC_COPY_IN;
     break;
    case 'H':
     conn->asyncStatus = PGASYNC_COPY_OUT;
     break;





    default:
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext(
             "unexpected response from server; first received character was \"%c\"\n"),
           id);

     pqSaveErrorResult(conn);

     conn->inStart = conn->inEnd;
     conn->asyncStatus = PGASYNC_READY;
     return;
   }
  }

  conn->inStart = conn->inCursor;
 }
}
