
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct catclist {int dummy; } ;
typedef int Datum ;


 int ERROR ;
 int PointerIsValid (int ) ;
 struct catclist* SearchCatCacheList (int ,int,int ,int ,int ) ;
 int * SysCache ;
 int SysCacheSize ;
 int elog (int ,char*,int) ;

struct catclist *
SearchSysCacheList(int cacheId, int nkeys,
       Datum key1, Datum key2, Datum key3)
{
 if (cacheId < 0 || cacheId >= SysCacheSize ||
  !PointerIsValid(SysCache[cacheId]))
  elog(ERROR, "invalid cache ID: %d", cacheId);

 return SearchCatCacheList(SysCache[cacheId], nkeys,
         key1, key2, key3);
}
