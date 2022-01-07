
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sock; scalar_t__ asyncStatus; int errorMessage; scalar_t__ copy_is_binary; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 scalar_t__ PGASYNC_COPY_BOTH ;
 scalar_t__ PGASYNC_COPY_OUT ;
 scalar_t__ PGINVALID_SOCKET ;
 int PQgetlineAsync (TYPE_1__*,char*,int) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqReadData (TYPE_1__*) ;
 scalar_t__ pqWait (int,int,TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ) ;
 int strcpy (char*,char*) ;

int
pqGetline3(PGconn *conn, char *s, int maxlen)
{
 int status;

 if (conn->sock == PGINVALID_SOCKET ||
  (conn->asyncStatus != PGASYNC_COPY_OUT &&
   conn->asyncStatus != PGASYNC_COPY_BOTH) ||
  conn->copy_is_binary)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("PQgetline: not doing text COPY OUT\n"));
  *s = '\0';
  return EOF;
 }

 while ((status = PQgetlineAsync(conn, s, maxlen - 1)) == 0)
 {

  if (pqWait(1, 0, conn) ||
   pqReadData(conn) < 0)
  {
   *s = '\0';
   return EOF;
  }
 }

 if (status < 0)
 {

  strcpy(s, "\\.");
  return 0;
 }


 if (s[status - 1] == '\n')
 {
  s[status - 1] = '\0';
  return 0;
 }
 else
 {
  s[status] = '\0';
  return 1;
 }
}
