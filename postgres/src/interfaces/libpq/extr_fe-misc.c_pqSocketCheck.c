
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
typedef int sebuf ;
struct TYPE_4__ {scalar_t__ sock; int errorMessage; scalar_t__ ssl_in_use; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ EINTR ;
 scalar_t__ PGINVALID_SOCKET ;
 int PG_STRERROR_R_BUFLEN ;
 scalar_t__ SOCK_ERRNO ;
 int SOCK_STRERROR (scalar_t__,char*,int) ;
 int libpq_gettext (char*) ;
 scalar_t__ pgtls_read_pending (TYPE_1__*) ;
 int pqSocketPoll (scalar_t__,int,int,int ) ;
 int printfPQExpBuffer (int *,int ,...) ;

__attribute__((used)) static int
pqSocketCheck(PGconn *conn, int forRead, int forWrite, time_t end_time)
{
 int result;

 if (!conn)
  return -1;
 if (conn->sock == PGINVALID_SOCKET)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("invalid socket\n"));
  return -1;
 }
 do
  result = pqSocketPoll(conn->sock, forRead, forWrite, end_time);
 while (result < 0 && SOCK_ERRNO == EINTR);

 if (result < 0)
 {
  char sebuf[PG_STRERROR_R_BUFLEN];

  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("select() failed: %s\n"),
        SOCK_STRERROR(SOCK_ERRNO, sebuf, sizeof(sebuf)));
 }

 return result;
}
