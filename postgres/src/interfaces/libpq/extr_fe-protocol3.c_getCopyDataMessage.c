
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int inCursor; int inStart; int inEnd; void* asyncStatus; } ;
typedef TYPE_1__ PGconn ;


 void* PGASYNC_BUSY ;
 void* PGASYNC_COPY_BOTH ;
 void* PGASYNC_COPY_IN ;
 int getNotify (TYPE_1__*) ;
 int getParameterStatus (TYPE_1__*) ;
 int handleSyncLoss (TYPE_1__*,char,int) ;
 scalar_t__ pqCheckInBufferSpace (int,TYPE_1__*) ;
 int pqGetErrorNotice3 (TYPE_1__*,int) ;
 scalar_t__ pqGetInt (int*,int,TYPE_1__*) ;
 scalar_t__ pqGetc (char*,TYPE_1__*) ;

__attribute__((used)) static int
getCopyDataMessage(PGconn *conn)
{
 char id;
 int msgLength;
 int avail;

 for (;;)
 {





  conn->inCursor = conn->inStart;
  if (pqGetc(&id, conn))
   return 0;
  if (pqGetInt(&msgLength, 4, conn))
   return 0;
  if (msgLength < 4)
  {
   handleSyncLoss(conn, id, msgLength);
   return -2;
  }
  avail = conn->inEnd - conn->inCursor;
  if (avail < msgLength - 4)
  {




   if (pqCheckInBufferSpace(conn->inCursor + (size_t) msgLength - 4,
          conn))
   {






    handleSyncLoss(conn, id, msgLength);
    return -2;
   }
   return 0;
  }







  switch (id)
  {
   case 'A':
    if (getNotify(conn))
     return 0;
    break;
   case 'N':
    if (pqGetErrorNotice3(conn, 0))
     return 0;
    break;
   case 'S':
    if (getParameterStatus(conn))
     return 0;
    break;
   case 'd':
    return msgLength;
   case 'c':






    if (conn->asyncStatus == PGASYNC_COPY_BOTH)
     conn->asyncStatus = PGASYNC_COPY_IN;
    else
     conn->asyncStatus = PGASYNC_BUSY;
    return -1;
   default:





    conn->asyncStatus = PGASYNC_BUSY;
    return -1;
  }


  conn->inStart = conn->inCursor;
 }
}
