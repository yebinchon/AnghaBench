
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * errMsg; } ;
typedef TYPE_1__ PGresult ;


 int * pqResultStrdup (TYPE_1__*,char const*) ;

void
pqSetResultError(PGresult *res, const char *msg)
{
 if (!res)
  return;
 if (msg && *msg)
  res->errMsg = pqResultStrdup(res, msg);
 else
  res->errMsg = ((void*)0);
}
