
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {int Flink; } ;
struct TYPE_12__ {TYPE_1__ ListEntry; struct TYPE_12__* BlockData; struct TYPE_12__* LockedInCache; struct TYPE_12__* AccessCount; struct TYPE_12__* BlockNumber; } ;
struct TYPE_11__ {TYPE_1__ CacheBlockHead; TYPE_3__* BlockSize; TYPE_3__* BytesPerSector; TYPE_3__* DriveNumber; } ;
typedef TYPE_2__* PCACHE_DRIVE ;
typedef TYPE_3__* PCACHE_BLOCK ;


 int BugCheck (char*) ;
 int CACHE_BLOCK ;
 TYPE_3__* CONTAINING_RECORD (int ,int ,int ) ;
 TYPE_3__* CacheBlockCount ;
 TYPE_3__* CacheSizeCurrent ;
 TYPE_3__* CacheSizeLimit ;
 int ListEntry ;
 int TRACE (char*,TYPE_3__*) ;

VOID CacheInternalDumpBlockList(PCACHE_DRIVE CacheDrive)
{
    PCACHE_BLOCK CacheBlock;

    TRACE("Dumping block list for BIOS drive 0x%x.\n", CacheDrive->DriveNumber);
    TRACE("BytesPerSector: %d.\n", CacheDrive->BytesPerSector);
    TRACE("BlockSize: %d.\n", CacheDrive->BlockSize);
    TRACE("CacheSizeLimit: %d.\n", CacheSizeLimit);
    TRACE("CacheSizeCurrent: %d.\n", CacheSizeCurrent);
    TRACE("CacheBlockCount: %d.\n", CacheBlockCount);

    CacheBlock = CONTAINING_RECORD(CacheDrive->CacheBlockHead.Flink, CACHE_BLOCK, ListEntry);
    while (&CacheBlock->ListEntry != &CacheDrive->CacheBlockHead)
    {
        TRACE("Cache Block: CacheBlock: 0x%x\n", CacheBlock);
        TRACE("Cache Block: Block Number: %d\n", CacheBlock->BlockNumber);
        TRACE("Cache Block: Access Count: %d\n", CacheBlock->AccessCount);
        TRACE("Cache Block: Block Data: 0x%x\n", CacheBlock->BlockData);
        TRACE("Cache Block: Locked In Cache: %d\n", CacheBlock->LockedInCache);

        if (CacheBlock->BlockData == ((void*)0))
        {
            BugCheck("CacheBlock->BlockData == NULL\n");
        }

        CacheBlock = CONTAINING_RECORD(CacheBlock->ListEntry.Flink, CACHE_BLOCK, ListEntry);
    }
}
