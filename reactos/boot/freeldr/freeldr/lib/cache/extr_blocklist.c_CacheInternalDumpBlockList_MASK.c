#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {int /*<<< orphan*/  Flink; } ;
struct TYPE_12__ {TYPE_1__ ListEntry; struct TYPE_12__* BlockData; struct TYPE_12__* LockedInCache; struct TYPE_12__* AccessCount; struct TYPE_12__* BlockNumber; } ;
struct TYPE_11__ {TYPE_1__ CacheBlockHead; TYPE_3__* BlockSize; TYPE_3__* BytesPerSector; TYPE_3__* DriveNumber; } ;
typedef  TYPE_2__* PCACHE_DRIVE ;
typedef  TYPE_3__* PCACHE_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CACHE_BLOCK ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* CacheBlockCount ; 
 TYPE_3__* CacheSizeCurrent ; 
 TYPE_3__* CacheSizeLimit ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 

VOID FUNC3(PCACHE_DRIVE CacheDrive)
{
    PCACHE_BLOCK    CacheBlock;

    FUNC2("Dumping block list for BIOS drive 0x%x.\n", CacheDrive->DriveNumber);
    FUNC2("BytesPerSector: %d.\n", CacheDrive->BytesPerSector);
    FUNC2("BlockSize: %d.\n", CacheDrive->BlockSize);
    FUNC2("CacheSizeLimit: %d.\n", CacheSizeLimit);
    FUNC2("CacheSizeCurrent: %d.\n", CacheSizeCurrent);
    FUNC2("CacheBlockCount: %d.\n", CacheBlockCount);

    CacheBlock = FUNC1(CacheDrive->CacheBlockHead.Flink, CACHE_BLOCK, ListEntry);
    while (&CacheBlock->ListEntry != &CacheDrive->CacheBlockHead)
    {
        FUNC2("Cache Block: CacheBlock: 0x%x\n", CacheBlock);
        FUNC2("Cache Block: Block Number: %d\n", CacheBlock->BlockNumber);
        FUNC2("Cache Block: Access Count: %d\n", CacheBlock->AccessCount);
        FUNC2("Cache Block: Block Data: 0x%x\n", CacheBlock->BlockData);
        FUNC2("Cache Block: Locked In Cache: %d\n", CacheBlock->LockedInCache);

        if (CacheBlock->BlockData == NULL)
        {
            FUNC0("CacheBlock->BlockData == NULL\n");
        }

        CacheBlock = FUNC1(CacheBlock->ListEntry.Flink, CACHE_BLOCK, ListEntry);
    }
}