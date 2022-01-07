
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* attDescs; } ;
struct TYPE_5__ {int typid; } ;
typedef TYPE_2__ PGresult ;
typedef int Oid ;


 int InvalidOid ;
 int check_field_number (TYPE_2__ const*,int) ;

Oid
PQftype(const PGresult *res, int field_num)
{
 if (!check_field_number(res, field_num))
  return InvalidOid;
 if (res->attDescs)
  return res->attDescs[field_num].typid;
 else
  return InvalidOid;
}
