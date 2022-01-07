
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int catlistrefarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int CatCList ;


 int ERROR ;
 int PointerGetDatum (int *) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int *,int ) ;

void
ResourceOwnerForgetCatCacheListRef(ResourceOwner owner, CatCList *list)
{
 if (!ResourceArrayRemove(&(owner->catlistrefarr), PointerGetDatum(list)))
  elog(ERROR, "catcache list reference %p is not owned by resource owner %s",
    list, owner->name);
}
