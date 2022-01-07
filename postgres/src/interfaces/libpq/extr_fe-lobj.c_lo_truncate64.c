
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pg_int64 ;
struct TYPE_12__ {TYPE_2__* lobjfuncs; int errorMessage; } ;
struct TYPE_9__ {int integer; int* ptr; } ;
struct TYPE_11__ {int isint; int len; TYPE_1__ u; } ;
struct TYPE_10__ {scalar_t__ fn_lo_truncate64; } ;
typedef TYPE_3__ PQArgBlock ;
typedef int PGresult ;
typedef TYPE_4__ PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQfn (TYPE_4__*,scalar_t__,int*,int*,int,TYPE_3__*,int) ;
 scalar_t__ PQresultStatus (int *) ;
 int libpq_gettext (char*) ;
 int lo_hton64 (int ) ;
 scalar_t__ lo_initialize (TYPE_4__*) ;
 int printfPQExpBuffer (int *,int ) ;

int
lo_truncate64(PGconn *conn, int fd, pg_int64 len)
{
 PQArgBlock argv[2];
 PGresult *res;
 int retval;
 int result_len;

 if (conn == ((void*)0) || conn->lobjfuncs == ((void*)0))
 {
  if (lo_initialize(conn) < 0)
   return -1;
 }

 if (conn->lobjfuncs->fn_lo_truncate64 == 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("cannot determine OID of function lo_truncate64\n"));
  return -1;
 }

 argv[0].isint = 1;
 argv[0].len = 4;
 argv[0].u.integer = fd;

 len = lo_hton64(len);
 argv[1].isint = 0;
 argv[1].len = 8;
 argv[1].u.ptr = (int *) &len;

 res = PQfn(conn, conn->lobjfuncs->fn_lo_truncate64,
      &retval, &result_len, 1, argv, 2);

 if (PQresultStatus(res) == PGRES_COMMAND_OK)
 {
  PQclear(res);
  return retval;
 }
 else
 {
  PQclear(res);
  return -1;
 }
}
