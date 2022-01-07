
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;
typedef int Datum ;
typedef int CatCache ;


 int SearchCatCacheInternal (int *,int,int ,int ,int ,int ) ;

HeapTuple
SearchCatCache1(CatCache *cache,
    Datum v1)
{
 return SearchCatCacheInternal(cache, 1, v1, 0, 0, 0);
}
