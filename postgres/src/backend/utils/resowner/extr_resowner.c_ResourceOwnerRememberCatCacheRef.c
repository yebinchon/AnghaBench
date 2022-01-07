
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int catrefarr; } ;
typedef TYPE_1__* ResourceOwner ;
typedef int HeapTuple ;


 int PointerGetDatum (int ) ;
 int ResourceArrayAdd (int *,int ) ;

void
ResourceOwnerRememberCatCacheRef(ResourceOwner owner, HeapTuple tuple)
{
 ResourceArrayAdd(&(owner->catrefarr), PointerGetDatum(tuple));
}
