
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
struct TYPE_9__ {char* outBuffer; int outCount; int write_failed; scalar_t__ sock; TYPE_2__ errorMessage; void* write_err_msg; } ;
typedef TYPE_1__ PGconn ;





 int Min (int,int) ;
 scalar_t__ PGINVALID_SOCKET ;
 int SOCK_ERRNO ;
 int libpq_gettext (char*) ;
 int memmove (char*,char*,int) ;
 scalar_t__ pqIsnonblocking (TYPE_1__*) ;
 scalar_t__ pqReadData (TYPE_1__*) ;
 scalar_t__ pqWait (int,int,TYPE_1__*) ;
 int pqsecure_write (TYPE_1__*,char*,int) ;
 int printfPQExpBuffer (TYPE_2__*,int ) ;
 int resetPQExpBuffer (TYPE_2__*) ;
 void* strdup (int ) ;

__attribute__((used)) static int
pqSendSome(PGconn *conn, int len)
{
 char *ptr = conn->outBuffer;
 int remaining = conn->outCount;
 int result = 0;
 if (conn->write_failed)
 {

  conn->outCount = 0;
  return 0;
 }

 if (conn->sock == PGINVALID_SOCKET)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("connection not open\n"));
  conn->write_failed = 1;


  conn->write_err_msg = strdup(conn->errorMessage.data);
  resetPQExpBuffer(&conn->errorMessage);

  conn->outCount = 0;
  return 0;
 }


 while (len > 0)
 {
  int sent;


  sent = pqsecure_write(conn, ptr, len);
  if (sent < 0)
  {

   switch (SOCK_ERRNO)
   {

    case 130:
     break;


    case 128:
     break;

    case 129:
     continue;

    default:

     conn->write_failed = 1;
     conn->write_err_msg = strdup(conn->errorMessage.data);
     resetPQExpBuffer(&conn->errorMessage);


     conn->outCount = 0;
     return 0;
   }
  }
  else
  {
   ptr += sent;
   len -= sent;
   remaining -= sent;
  }

  if (len > 0)
  {
   if (pqReadData(conn) < 0)
   {
    result = -1;
    break;
   }

   if (pqIsnonblocking(conn))
   {
    result = 1;
    break;
   }

   if (pqWait(1, 1, conn))
   {
    result = -1;
    break;
   }
  }
 }


 if (remaining > 0)
  memmove(conn->outBuffer, ptr, remaining);
 conn->outCount = remaining;

 return result;
}
