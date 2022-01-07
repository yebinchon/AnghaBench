
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ asyncStatus; int inCursor; int copy_already_done; int inStart; int * inBuffer; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_COPY_BOTH ;
 scalar_t__ PGASYNC_COPY_OUT ;
 int getCopyDataMessage (TYPE_1__*) ;
 int memcpy (char*,int *,int) ;

int
pqGetlineAsync3(PGconn *conn, char *buffer, int bufsize)
{
 int msgLength;
 int avail;

 if (conn->asyncStatus != PGASYNC_COPY_OUT
  && conn->asyncStatus != PGASYNC_COPY_BOTH)
  return -1;







 msgLength = getCopyDataMessage(conn);
 if (msgLength < 0)
  return -1;
 if (msgLength == 0)
  return 0;







 conn->inCursor += conn->copy_already_done;
 avail = msgLength - 4 - conn->copy_already_done;
 if (avail <= bufsize)
 {

  memcpy(buffer, &conn->inBuffer[conn->inCursor], avail);

  conn->inStart = conn->inCursor + avail;

  conn->copy_already_done = 0;
  return avail;
 }
 else
 {

  memcpy(buffer, &conn->inBuffer[conn->inCursor], bufsize);

  conn->copy_already_done += bufsize;
  return bufsize;
 }
}
