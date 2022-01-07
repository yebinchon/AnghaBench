
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int CatCacheInvalidate (int ,int ) ;
 int ERROR ;
 int PointerIsValid (int ) ;
 int * SysCache ;
 int SysCacheSize ;
 int elog (int ,char*,int) ;

void
SysCacheInvalidate(int cacheId, uint32 hashValue)
{
 if (cacheId < 0 || cacheId >= SysCacheSize)
  elog(ERROR, "invalid cache ID: %d", cacheId);


 if (!PointerIsValid(SysCache[cacheId]))
  return;

 CatCacheInvalidate(SysCache[cacheId], hashValue);
}
