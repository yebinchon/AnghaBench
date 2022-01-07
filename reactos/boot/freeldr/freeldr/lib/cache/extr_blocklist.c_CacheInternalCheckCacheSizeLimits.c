
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int BlockSize; int BytesPerSector; } ;
typedef int SIZE_T ;
typedef TYPE_1__* PCACHE_DRIVE ;


 int CacheBlockCount ;
 int CacheInternalDumpBlockList (TYPE_1__*) ;
 int CacheInternalFreeBlock (TYPE_1__*) ;
 int CacheSizeLimit ;
 int TRACE (char*) ;

VOID CacheInternalCheckCacheSizeLimits(PCACHE_DRIVE CacheDrive)
{
    SIZE_T NewCacheSize;

    TRACE("CacheInternalCheckCacheSizeLimits()\n");


    NewCacheSize = (CacheBlockCount + 1) * (CacheDrive->BlockSize * CacheDrive->BytesPerSector);


    if (NewCacheSize > CacheSizeLimit)
    {
        CacheInternalFreeBlock(CacheDrive);
        CacheInternalDumpBlockList(CacheDrive);
    }
}
