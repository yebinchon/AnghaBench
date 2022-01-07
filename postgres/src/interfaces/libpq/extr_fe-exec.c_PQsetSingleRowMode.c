
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ asyncStatus; scalar_t__ queryclass; int singleRowMode; scalar_t__ result; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGASYNC_BUSY ;
 scalar_t__ PGQUERY_EXTENDED ;
 scalar_t__ PGQUERY_SIMPLE ;

int
PQsetSingleRowMode(PGconn *conn)
{




 if (!conn)
  return 0;
 if (conn->asyncStatus != PGASYNC_BUSY)
  return 0;
 if (conn->queryclass != PGQUERY_SIMPLE &&
  conn->queryclass != PGQUERY_EXTENDED)
  return 0;
 if (conn->result)
  return 0;


 conn->singleRowMode = 1;
 return 1;
}
