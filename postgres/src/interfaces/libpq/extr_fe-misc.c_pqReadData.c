
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sock; int inStart; int inEnd; scalar_t__ inBuffer; int inCursor; int inBufSize; int status; int errorMessage; scalar_t__ ssl_in_use; } ;
typedef TYPE_1__ PGconn ;


 int CONNECTION_BAD ;
 scalar_t__ EAGAIN ;
 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ PGINVALID_SOCKET ;
 scalar_t__ SOCK_ERRNO ;
 int libpq_gettext (char*) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ pqCheckInBufferSpace (size_t,TYPE_1__*) ;
 int pqDropConnection (TYPE_1__*,int) ;
 int pqReadReady (TYPE_1__*) ;
 int pqsecure_read (TYPE_1__*,scalar_t__,int) ;
 int printfPQExpBuffer (int *,int ) ;

int
pqReadData(PGconn *conn)
{
 int someread = 0;
 int nread;

 if (conn->sock == PGINVALID_SOCKET)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("connection not open\n"));
  return -1;
 }


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
 if (conn->inBufSize - conn->inEnd < 8192)
 {
  if (pqCheckInBufferSpace(conn->inEnd + (size_t) 8192, conn))
  {



   if (conn->inBufSize - conn->inEnd < 100)
    return -1;
  }
 }


retry3:
 nread = pqsecure_read(conn, conn->inBuffer + conn->inEnd,
        conn->inBufSize - conn->inEnd);
 if (nread < 0)
 {
  if (SOCK_ERRNO == EINTR)
   goto retry3;
  return -1;
 }
 if (nread > 0)
 {
  conn->inEnd += nread;
  if (conn->inEnd > 32768 &&
   (conn->inBufSize - conn->inEnd) >= 8192)
  {
   someread = 1;
   goto retry3;
  }
  return 1;
 }

 if (someread)
  return 1;
 switch (pqReadReady(conn))
 {
  case 0:

   return 0;
  case 1:

   break;
  default:

   goto definitelyEOF;
 }





retry4:
 nread = pqsecure_read(conn, conn->inBuffer + conn->inEnd,
        conn->inBufSize - conn->inEnd);
 if (nread < 0)
 {
  if (SOCK_ERRNO == EINTR)
   goto retry4;
  return -1;
 }
 if (nread > 0)
 {
  conn->inEnd += nread;
  return 1;
 }





definitelyEOF:
 printfPQExpBuffer(&conn->errorMessage,
       libpq_gettext(
         "server closed the connection unexpectedly\n"
         "\tThis probably means the server terminated abnormally\n"
         "\tbefore or while processing the request.\n"));


definitelyFailed:

 pqDropConnection(conn, 0);
 conn->status = CONNECTION_BAD;
 return -1;
}
