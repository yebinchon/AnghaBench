
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* paramDescs; } ;
struct TYPE_5__ {int typid; } ;
typedef TYPE_2__ PGresult ;
typedef int Oid ;


 int InvalidOid ;
 int check_param_number (TYPE_2__ const*,int) ;

Oid
PQparamtype(const PGresult *res, int param_num)
{
 if (!check_param_number(res, param_num))
  return InvalidOid;
 if (res->paramDescs)
  return res->paramDescs[param_num].typid;
 else
  return InvalidOid;
}
