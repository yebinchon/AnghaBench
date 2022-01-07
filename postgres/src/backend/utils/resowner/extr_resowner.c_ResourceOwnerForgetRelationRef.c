
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int relrefarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int Relation ;


 int ERROR ;
 int PointerGetDatum (int ) ;
 int RelationGetRelationName (int ) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetRelationRef(ResourceOwner owner, Relation rel)
{
 if (!ResourceArrayRemove(&(owner->relrefarr), PointerGetDatum(rel)))
  elog(ERROR, "relcache reference %s is not owned by resource owner %s",
    RelationGetRelationName(rel), owner->name);
}
