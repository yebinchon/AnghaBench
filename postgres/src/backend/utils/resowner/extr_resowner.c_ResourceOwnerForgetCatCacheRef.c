
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int catrefarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int HeapTuple ;


 int ERROR ;
 int PointerGetDatum (int ) ;
 int ResourceArrayRemove (int *,int ) ;
 int elog (int ,char*,int ,int ) ;

void
ResourceOwnerForgetCatCacheRef(ResourceOwner owner, HeapTuple tuple)
{
 if (!ResourceArrayRemove(&(owner->catrefarr), PointerGetDatum(tuple)))
  elog(ERROR, "catcache reference %p is not owned by resource owner %s",
    tuple, owner->name);
}
