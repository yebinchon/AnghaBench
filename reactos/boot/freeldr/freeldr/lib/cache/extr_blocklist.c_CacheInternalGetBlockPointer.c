
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int BlockNumber; } ;
typedef int PCACHE_DRIVE ;
typedef TYPE_1__* PCACHE_BLOCK ;


 TYPE_1__* CacheInternalAddBlockToCache (int ,int ) ;
 TYPE_1__* CacheInternalFindBlock (int ,int ) ;
 int CacheInternalOptimizeBlockList (int ,TYPE_1__*) ;
 int TRACE (char*,int ,...) ;

PCACHE_BLOCK CacheInternalGetBlockPointer(PCACHE_DRIVE CacheDrive, ULONG BlockNumber)
{
    PCACHE_BLOCK CacheBlock = ((void*)0);

    TRACE("CacheInternalGetBlockPointer() BlockNumber = %d\n", BlockNumber);

    CacheBlock = CacheInternalFindBlock(CacheDrive, BlockNumber);

    if (CacheBlock != ((void*)0))
    {
        TRACE("Cache hit! BlockNumber: %d CacheBlock->BlockNumber: %d\n", BlockNumber, CacheBlock->BlockNumber);

        return CacheBlock;
    }

    TRACE("Cache miss! BlockNumber: %d\n", BlockNumber);

    CacheBlock = CacheInternalAddBlockToCache(CacheDrive, BlockNumber);


    CacheInternalOptimizeBlockList(CacheDrive, CacheBlock);

    return CacheBlock;
}
