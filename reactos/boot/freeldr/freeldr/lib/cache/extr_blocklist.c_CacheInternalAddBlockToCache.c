
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_11__ {int BlockNumber; int ListEntry; struct TYPE_11__* BlockData; } ;
struct TYPE_10__ {int BlockSize; int BytesPerSector; int CacheBlockHead; int DriveNumber; } ;
typedef TYPE_1__* PCACHE_DRIVE ;
typedef TYPE_2__* PCACHE_BLOCK ;
typedef int CACHE_BLOCK ;


 int CacheBlockCount ;
 int CacheInternalCheckCacheSizeLimits (TYPE_1__*) ;
 int CacheInternalDumpBlockList (TYPE_1__*) ;
 int CacheSizeCurrent ;
 int DiskReadBuffer ;
 void* FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (TYPE_2__*,int ) ;
 int InsertTailList (int *,int *) ;
 int MachDiskReadLogicalSectors (int ,int,int,int ) ;
 int RtlCopyMemory (TYPE_2__*,int ,int) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int TAG_CACHE_BLOCK ;
 int TAG_CACHE_DATA ;
 int TRACE (char*,int) ;

PCACHE_BLOCK CacheInternalAddBlockToCache(PCACHE_DRIVE CacheDrive, ULONG BlockNumber)
{
    PCACHE_BLOCK CacheBlock = ((void*)0);

    TRACE("CacheInternalAddBlockToCache() BlockNumber = %d\n", BlockNumber);


    CacheInternalCheckCacheSizeLimits(CacheDrive);




    CacheBlock = FrLdrTempAlloc(sizeof(CACHE_BLOCK), TAG_CACHE_BLOCK);
    if (CacheBlock == ((void*)0))
    {
        return ((void*)0);
    }



    RtlZeroMemory(CacheBlock, sizeof(CACHE_BLOCK));
    CacheBlock->BlockNumber = BlockNumber;
    CacheBlock->BlockData = FrLdrTempAlloc(CacheDrive->BlockSize * CacheDrive->BytesPerSector,
                                           TAG_CACHE_DATA);
    if (CacheBlock->BlockData ==((void*)0))
    {
        FrLdrTempFree(CacheBlock, TAG_CACHE_BLOCK);
        return ((void*)0);
    }


    if (!MachDiskReadLogicalSectors(CacheDrive->DriveNumber, (BlockNumber * CacheDrive->BlockSize), CacheDrive->BlockSize, DiskReadBuffer))
    {
        FrLdrTempFree(CacheBlock->BlockData, TAG_CACHE_DATA);
        FrLdrTempFree(CacheBlock, TAG_CACHE_BLOCK);
        return ((void*)0);
    }
    RtlCopyMemory(CacheBlock->BlockData, DiskReadBuffer, CacheDrive->BlockSize * CacheDrive->BytesPerSector);


    InsertTailList(&CacheDrive->CacheBlockHead, &CacheBlock->ListEntry);


    CacheBlockCount++;
    CacheSizeCurrent = CacheBlockCount * (CacheDrive->BlockSize * CacheDrive->BytesPerSector);

    CacheInternalDumpBlockList(CacheDrive);

    return CacheBlock;
}
