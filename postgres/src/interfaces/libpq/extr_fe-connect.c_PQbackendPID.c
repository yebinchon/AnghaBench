
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int be_pid; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_OK ;

int
PQbackendPID(const PGconn *conn)
{
 if (!conn || conn->status != CONNECTION_OK)
  return 0;
 return conn->be_pid;
}
