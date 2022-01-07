
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inBufSize; scalar_t__ inStart; scalar_t__ inEnd; char* inBuffer; scalar_t__ inCursor; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int memmove (char*,char*,scalar_t__) ;
 int printfPQExpBuffer (int *,char*) ;
 char* realloc (char*,int) ;

int
pqCheckInBufferSpace(size_t bytes_needed, PGconn *conn)
{
 int newsize = conn->inBufSize;
 char *newbuf;


 if (bytes_needed <= (size_t) newsize)
  return 0;
 bytes_needed -= conn->inStart;

 if (conn->inStart < conn->inEnd)
 {
  if (conn->inStart > 0)
  {
   memmove(conn->inBuffer, conn->inBuffer + conn->inStart,
     conn->inEnd - conn->inStart);
   conn->inEnd -= conn->inStart;
   conn->inCursor -= conn->inStart;
   conn->inStart = 0;
  }
 }
 else
 {

  conn->inStart = conn->inCursor = conn->inEnd = 0;
 }


 if (bytes_needed <= (size_t) newsize)
  return 0;
 do
 {
  newsize *= 2;
 } while (newsize > 0 && bytes_needed > (size_t) newsize);

 if (newsize > 0 && bytes_needed <= (size_t) newsize)
 {
  newbuf = realloc(conn->inBuffer, newsize);
  if (newbuf)
  {

   conn->inBuffer = newbuf;
   conn->inBufSize = newsize;
   return 0;
  }
 }

 newsize = conn->inBufSize;
 do
 {
  newsize += 8192;
 } while (newsize > 0 && bytes_needed > (size_t) newsize);

 if (newsize > 0 && bytes_needed <= (size_t) newsize)
 {
  newbuf = realloc(conn->inBuffer, newsize);
  if (newbuf)
  {

   conn->inBuffer = newbuf;
   conn->inBufSize = newsize;
   return 0;
  }
 }


 printfPQExpBuffer(&conn->errorMessage,
       "cannot allocate memory for input buffer\n");
 return EOF;
}
