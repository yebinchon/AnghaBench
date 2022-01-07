
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ asyncStatus; scalar_t__ inCursor; scalar_t__ inStart; scalar_t__ inEnd; char* inBuffer; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_COPY_OUT ;

int
pqGetlineAsync2(PGconn *conn, char *buffer, int bufsize)
{
 int avail;

 if (conn->asyncStatus != PGASYNC_COPY_OUT)
  return -1;
 conn->inCursor = conn->inStart;

 avail = bufsize;
 while (avail > 0 && conn->inCursor < conn->inEnd)
 {
  char c = conn->inBuffer[conn->inCursor++];

  *buffer++ = c;
  --avail;
  if (c == '\n')
  {

   conn->inStart = conn->inCursor;

   if (bufsize - avail == 3 && buffer[-3] == '\\' && buffer[-2] == '.')
    return -1;

   return bufsize - avail;
  }
 }
 if (avail == 0 && bufsize > 3)
 {
  conn->inStart = conn->inCursor - 3;
  return bufsize - 3;
 }
 return 0;
}
