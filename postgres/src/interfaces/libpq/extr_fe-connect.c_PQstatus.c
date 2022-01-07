
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ PGconn ;
typedef int ConnStatusType ;


 int CONNECTION_BAD ;

ConnStatusType
PQstatus(const PGconn *conn)
{
 if (!conn)
  return CONNECTION_BAD;
 return conn->status;
}
