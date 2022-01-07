
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ PointerIsValid (int ) ;
 int SearchCatCache (int ,int ,int ,int ,int ) ;
 int * SysCache ;
 int SysCacheSize ;

HeapTuple
SearchSysCache(int cacheId,
      Datum key1,
      Datum key2,
      Datum key3,
      Datum key4)
{
 Assert(cacheId >= 0 && cacheId < SysCacheSize &&
     PointerIsValid(SysCache[cacheId]));

 return SearchCatCache(SysCache[cacheId], key1, key2, key3, key4);
}
