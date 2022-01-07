
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* lobjfuncs; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_11__ {int isint; int len; TYPE_1__ u; } ;
struct TYPE_10__ {int fn_lo_close; } ;
typedef TYPE_3__ PQArgBlock ;
typedef int PGresult ;
typedef TYPE_4__ PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 int * PQfn (TYPE_4__*,int ,int*,int*,int,TYPE_3__*,int) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ lo_initialize (TYPE_4__*) ;

int
lo_close(PGconn *conn, int fd)
{
 PQArgBlock argv[1];
 PGresult *res;
 int retval;
 int result_len;

 if (conn == ((void*)0) || conn->lobjfuncs == ((void*)0))
 {
  if (lo_initialize(conn) < 0)
   return -1;
 }

 argv[0].isint = 1;
 argv[0].len = 4;
 argv[0].u.integer = fd;
 res = PQfn(conn, conn->lobjfuncs->fn_lo_close,
      &retval, &result_len, 1, argv, 1);
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
