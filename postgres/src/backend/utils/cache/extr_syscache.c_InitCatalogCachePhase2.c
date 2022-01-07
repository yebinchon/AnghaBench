
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int CacheInitialized ;
 int InitCatCachePhase2 (int ,int) ;
 int * SysCache ;
 int SysCacheSize ;

void
InitCatalogCachePhase2(void)
{
 int cacheId;

 Assert(CacheInitialized);

 for (cacheId = 0; cacheId < SysCacheSize; cacheId++)
  InitCatCachePhase2(SysCache[cacheId], 1);
}
