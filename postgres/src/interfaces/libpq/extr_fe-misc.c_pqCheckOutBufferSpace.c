
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outBufSize; char* outBuffer; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int printfPQExpBuffer (int *,char*) ;
 char* realloc (char*,int) ;

int
pqCheckOutBufferSpace(size_t bytes_needed, PGconn *conn)
{
 int newsize = conn->outBufSize;
 char *newbuf;


 if (bytes_needed <= (size_t) newsize)
  return 0;
 do
 {
  newsize *= 2;
 } while (newsize > 0 && bytes_needed > (size_t) newsize);

 if (newsize > 0 && bytes_needed <= (size_t) newsize)
 {
  newbuf = realloc(conn->outBuffer, newsize);
  if (newbuf)
  {

   conn->outBuffer = newbuf;
   conn->outBufSize = newsize;
   return 0;
  }
 }

 newsize = conn->outBufSize;
 do
 {
  newsize += 8192;
 } while (newsize > 0 && bytes_needed > (size_t) newsize);

 if (newsize > 0 && bytes_needed <= (size_t) newsize)
 {
  newbuf = realloc(conn->outBuffer, newsize);
  if (newbuf)
  {

   conn->outBuffer = newbuf;
   conn->outBufSize = newsize;
   return 0;
  }
 }


 printfPQExpBuffer(&conn->errorMessage,
       "cannot allocate memory for output buffer\n");
 return EOF;
}
