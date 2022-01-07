
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resultStatus; } ;
typedef TYPE_1__ PGresult ;
typedef int ExecStatusType ;


 int PGRES_FATAL_ERROR ;

ExecStatusType
PQresultStatus(const PGresult *res)
{
 if (!res)
  return PGRES_FATAL_ERROR;
 return res->resultStatus;
}
