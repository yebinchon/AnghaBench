
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int Blink; } ;
struct TYPE_9__ {struct TYPE_9__* BlockData; TYPE_3__ ListEntry; scalar_t__ LockedInCache; } ;
struct TYPE_8__ {int BlockSize; int BytesPerSector; TYPE_3__ CacheBlockHead; } ;
typedef TYPE_1__* PCACHE_DRIVE ;
typedef TYPE_2__* PCACHE_BLOCK ;
typedef int BOOLEAN ;


 int CACHE_BLOCK ;
 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int CacheBlockCount ;
 int CacheSizeCurrent ;
 int FALSE ;
 int FrLdrTempFree (TYPE_2__*,int ) ;
 scalar_t__ IsListEmpty (TYPE_3__*) ;
 int ListEntry ;
 int RemoveEntryList (TYPE_3__*) ;
 int TAG_CACHE_BLOCK ;
 int TAG_CACHE_DATA ;
 int TRACE (char*) ;
 int TRUE ;

BOOLEAN CacheInternalFreeBlock(PCACHE_DRIVE CacheDrive)
{
    PCACHE_BLOCK CacheBlockToFree;

    TRACE("CacheInternalFreeBlock()\n");




    CacheBlockToFree = CONTAINING_RECORD(CacheDrive->CacheBlockHead.Blink, CACHE_BLOCK, ListEntry);
    while (&CacheBlockToFree->ListEntry != &CacheDrive->CacheBlockHead && CacheBlockToFree->LockedInCache)
    {
        CacheBlockToFree = CONTAINING_RECORD(CacheBlockToFree->ListEntry.Blink, CACHE_BLOCK, ListEntry);
    }



    if (IsListEmpty(&CacheDrive->CacheBlockHead))
    {
        return FALSE;
    }

    RemoveEntryList(&CacheBlockToFree->ListEntry);


    FrLdrTempFree(CacheBlockToFree->BlockData, TAG_CACHE_DATA);
    FrLdrTempFree(CacheBlockToFree, TAG_CACHE_BLOCK);


    CacheBlockCount--;
    CacheSizeCurrent = CacheBlockCount * (CacheDrive->BlockSize * CacheDrive->BytesPerSector);

    return TRUE;
}
