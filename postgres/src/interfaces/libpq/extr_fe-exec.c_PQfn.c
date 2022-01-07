
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sock; scalar_t__ asyncStatus; int pversion; int errorMessage; int * result; } ;
typedef int PQArgBlock ;
typedef int PGresult ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_IDLE ;
 scalar_t__ PGINVALID_SOCKET ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int libpq_gettext (char*) ;
 int * pqFunctionCall2 (TYPE_1__*,int,int*,int*,int,int const*,int) ;
 int * pqFunctionCall3 (TYPE_1__*,int,int*,int*,int,int const*,int) ;
 int printfPQExpBuffer (int *,int ) ;
 int resetPQExpBuffer (int *) ;

PGresult *
PQfn(PGconn *conn,
  int fnid,
  int *result_buf,
  int *result_len,
  int result_is_int,
  const PQArgBlock *args,
  int nargs)
{
 *result_len = 0;

 if (!conn)
  return ((void*)0);


 resetPQExpBuffer(&conn->errorMessage);

 if (conn->sock == PGINVALID_SOCKET || conn->asyncStatus != PGASYNC_IDLE ||
  conn->result != ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("connection in wrong state\n"));
  return ((void*)0);
 }

 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  return pqFunctionCall3(conn, fnid,
          result_buf, result_len,
          result_is_int,
          args, nargs);
 else
  return pqFunctionCall2(conn, fnid,
          result_buf, result_len,
          result_is_int,
          args, nargs);
}
