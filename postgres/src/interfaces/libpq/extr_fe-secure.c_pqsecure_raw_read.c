
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int sebuf ;
struct TYPE_3__ {int errorMessage; int sock; } ;
typedef TYPE_1__ PGconn ;






 int PG_STRERROR_R_BUFLEN ;
 int SOCK_ERRNO ;
 int SOCK_ERRNO_SET (int) ;
 int SOCK_STRERROR (int,char*,int) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,int ,...) ;
 scalar_t__ recv (int ,void*,size_t,int ) ;

ssize_t
pqsecure_raw_read(PGconn *conn, void *ptr, size_t len)
{
 ssize_t n;
 int result_errno = 0;
 char sebuf[PG_STRERROR_R_BUFLEN];

 n = recv(conn->sock, ptr, len, 0);

 if (n < 0)
 {
  result_errno = SOCK_ERRNO;


  switch (result_errno)
  {

   case 131:


   case 128:

   case 129:

    break;


   case 130:
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext(
            "server closed the connection unexpectedly\n"
            "\tThis probably means the server terminated abnormally\n"
            "\tbefore or while processing the request.\n"));
    break;


   default:
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("could not receive data from server: %s\n"),
          SOCK_STRERROR(result_errno,
            sebuf, sizeof(sebuf)));
    break;
  }
 }


 SOCK_ERRNO_SET(result_errno);

 return n;
}
