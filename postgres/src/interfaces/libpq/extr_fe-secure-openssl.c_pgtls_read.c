
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int sebuf ;
struct TYPE_3__ {int errorMessage; int ssl; } ;
typedef TYPE_1__ PGconn ;


 int ECONNRESET ;
 int EPIPE ;
 int ERR_clear_error () ;
 unsigned long ERR_get_error () ;
 int PG_STRERROR_R_BUFLEN ;
 int SOCK_ERRNO ;
 int SOCK_ERRNO_SET (int) ;
 int SOCK_STRERROR (int,char*,int) ;






 int SSL_get_error (int ,scalar_t__) ;
 scalar_t__ SSL_read (int ,void*,size_t) ;
 int SSLerrfree (char*) ;
 char* SSLerrmessage (unsigned long) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,char*,...) ;

ssize_t
pgtls_read(PGconn *conn, void *ptr, size_t len)
{
 ssize_t n;
 int result_errno = 0;
 char sebuf[PG_STRERROR_R_BUFLEN];
 int err;
 unsigned long ecode;

rloop:
 SOCK_ERRNO_SET(0);
 ERR_clear_error();
 n = SSL_read(conn->ssl, ptr, len);
 err = SSL_get_error(conn->ssl, n);
 ecode = (err != 133 || n < 0) ? ERR_get_error() : 0;
 switch (err)
 {
  case 133:
   if (n < 0)
   {

    printfPQExpBuffer(&conn->errorMessage,
          "SSL_read failed but did not provide error information\n");

    result_errno = ECONNRESET;
   }
   break;
  case 130:
   n = 0;
   break;
  case 129:







   goto rloop;
  case 131:
   if (n < 0)
   {
    result_errno = SOCK_ERRNO;
    if (result_errno == EPIPE ||
     result_errno == ECONNRESET)
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext(
             "server closed the connection unexpectedly\n"
             "\tThis probably means the server terminated abnormally\n"
             "\tbefore or while processing the request.\n"));
    else
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("SSL SYSCALL error: %s\n"),
           SOCK_STRERROR(result_errno,
             sebuf, sizeof(sebuf)));
   }
   else
   {
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("SSL SYSCALL error: EOF detected\n"));

    result_errno = ECONNRESET;
    n = -1;
   }
   break;
  case 132:
   {
    char *errm = SSLerrmessage(ecode);

    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("SSL error: %s\n"), errm);
    SSLerrfree(errm);

    result_errno = ECONNRESET;
    n = -1;
    break;
   }
  case 128:






   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("SSL connection has been closed unexpectedly\n"));
   result_errno = ECONNRESET;
   n = -1;
   break;
  default:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("unrecognized SSL error code: %d\n"),
         err);

   result_errno = ECONNRESET;
   n = -1;
   break;
 }


 SOCK_ERRNO_SET(result_errno);

 return n;
}
