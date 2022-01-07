
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int ERROR ;
 int GetCatCacheHashValue (int ,int ,int ,int ,int ) ;
 int PointerIsValid (int ) ;
 int * SysCache ;
 int SysCacheSize ;
 int elog (int ,char*,int) ;

uint32
GetSysCacheHashValue(int cacheId,
      Datum key1,
      Datum key2,
      Datum key3,
      Datum key4)
{
 if (cacheId < 0 || cacheId >= SysCacheSize ||
  !PointerIsValid(SysCache[cacheId]))
  elog(ERROR, "invalid cache ID: %d", cacheId);

 return GetCatCacheHashValue(SysCache[cacheId], key1, key2, key3, key4);
}
