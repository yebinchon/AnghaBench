
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cc_nkeys; } ;
typedef int HeapTuple ;
typedef int Datum ;
typedef TYPE_1__ CatCache ;


 int SearchCatCacheInternal (TYPE_1__*,int ,int ,int ,int ,int ) ;

HeapTuple
SearchCatCache(CatCache *cache,
      Datum v1,
      Datum v2,
      Datum v3,
      Datum v4)
{
 return SearchCatCacheInternal(cache, cache->cc_nkeys, v1, v2, v3, v4);
}
