
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ asyncStatus; scalar_t__ write_failed; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_BUSY ;
 int parseInput (TYPE_1__*) ;

int
PQisBusy(PGconn *conn)
{
 if (!conn)
  return 0;


 parseInput(conn);





 return conn->asyncStatus == PGASYNC_BUSY || conn->write_failed;
}
