#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_11__ {int BlockNumber; int /*<<< orphan*/  ListEntry; struct TYPE_11__* BlockData; } ;
struct TYPE_10__ {int BlockSize; int BytesPerSector; int /*<<< orphan*/  CacheBlockHead; int /*<<< orphan*/  DriveNumber; } ;
typedef  TYPE_1__* PCACHE_DRIVE ;
typedef  TYPE_2__* PCACHE_BLOCK ;
typedef  int /*<<< orphan*/  CACHE_BLOCK ;

/* Variables and functions */
 int CacheBlockCount ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int CacheSizeCurrent ; 
 int /*<<< orphan*/  DiskReadBuffer ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  TAG_CACHE_BLOCK ; 
 int /*<<< orphan*/  TAG_CACHE_DATA ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

PCACHE_BLOCK FUNC9(PCACHE_DRIVE CacheDrive, ULONG BlockNumber)
{
    PCACHE_BLOCK    CacheBlock = NULL;

    FUNC8("CacheInternalAddBlockToCache() BlockNumber = %d\n", BlockNumber);

    // Check the size of the cache so we don't exceed our limits
    FUNC0(CacheDrive);

    // We will need to add the block to the
    // drive's list of cached blocks. So allocate
    // the block memory.
    CacheBlock = FUNC2(sizeof(CACHE_BLOCK), TAG_CACHE_BLOCK);
    if (CacheBlock == NULL)
    {
        return NULL;
    }

    // Now initialize the structure and
    // allocate room for the block data
    FUNC7(CacheBlock, sizeof(CACHE_BLOCK));
    CacheBlock->BlockNumber = BlockNumber;
    CacheBlock->BlockData = FUNC2(CacheDrive->BlockSize * CacheDrive->BytesPerSector,
                                           TAG_CACHE_DATA);
    if (CacheBlock->BlockData ==NULL)
    {
        FUNC3(CacheBlock, TAG_CACHE_BLOCK);
        return NULL;
    }

    // Now try to read in the block
    if (!FUNC5(CacheDrive->DriveNumber, (BlockNumber * CacheDrive->BlockSize), CacheDrive->BlockSize, DiskReadBuffer))
    {
        FUNC3(CacheBlock->BlockData, TAG_CACHE_DATA);
        FUNC3(CacheBlock, TAG_CACHE_BLOCK);
        return NULL;
    }
    FUNC6(CacheBlock->BlockData, DiskReadBuffer, CacheDrive->BlockSize * CacheDrive->BytesPerSector);

    // Add it to our list of blocks managed by the cache
    FUNC4(&CacheDrive->CacheBlockHead, &CacheBlock->ListEntry);

    // Update the cache data
    CacheBlockCount++;
    CacheSizeCurrent = CacheBlockCount * (CacheDrive->BlockSize * CacheDrive->BytesPerSector);

    FUNC1(CacheDrive);

    return CacheBlock;
}