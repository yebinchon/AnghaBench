
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sock; scalar_t__ asyncStatus; scalar_t__ inStart; scalar_t__ inEnd; char* inBuffer; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 scalar_t__ PGASYNC_COPY_OUT ;
 scalar_t__ PGINVALID_SOCKET ;
 scalar_t__ pqReadData (TYPE_1__*) ;
 scalar_t__ pqWait (int,int,TYPE_1__*) ;

int
pqGetline2(PGconn *conn, char *s, int maxlen)
{
 int result = 1;

 if (conn->sock == PGINVALID_SOCKET ||
  conn->asyncStatus != PGASYNC_COPY_OUT)
 {
  *s = '\0';
  return EOF;
 }





 while (maxlen > 1)
 {
  if (conn->inStart < conn->inEnd)
  {
   char c = conn->inBuffer[conn->inStart++];

   if (c == '\n')
   {
    result = 0;
    break;
   }
   *s++ = c;
   maxlen--;
  }
  else
  {

   if (pqWait(1, 0, conn) ||
    pqReadData(conn) < 0)
   {
    result = EOF;
    break;
   }
  }
 }
 *s = '\0';

 return result;
}
