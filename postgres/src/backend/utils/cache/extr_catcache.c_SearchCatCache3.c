
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;
typedef int Datum ;
typedef int CatCache ;


 int SearchCatCacheInternal (int *,int,int ,int ,int ,int ) ;

HeapTuple
SearchCatCache3(CatCache *cache,
    Datum v1, Datum v2, Datum v3)
{
 return SearchCatCacheInternal(cache, 3, v1, v2, v3, 0);
}
