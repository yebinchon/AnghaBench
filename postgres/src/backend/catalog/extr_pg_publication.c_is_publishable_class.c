
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ relkind; scalar_t__ relpersistence; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* Form_pg_class ;


 scalar_t__ FirstNormalObjectId ;
 int IsCatalogRelationOid (scalar_t__) ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELPERSISTENCE_PERMANENT ;

__attribute__((used)) static bool
is_publishable_class(Oid relid, Form_pg_class reltuple)
{
 return reltuple->relkind == RELKIND_RELATION &&
  !IsCatalogRelationOid(relid) &&
  reltuple->relpersistence == RELPERSISTENCE_PERMANENT &&
  relid >= FirstNormalObjectId;
}
