
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int libpq_gettext (char*) ;
 int pqSocketCheck (TYPE_1__*,int,int,int ) ;
 int printfPQExpBuffer (int *,int ) ;

int
pqWaitTimed(int forRead, int forWrite, PGconn *conn, time_t finish_time)
{
 int result;

 result = pqSocketCheck(conn, forRead, forWrite, finish_time);

 if (result < 0)
  return -1;

 if (result == 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("timeout expired\n"));
  return 1;
 }

 return 0;
}
