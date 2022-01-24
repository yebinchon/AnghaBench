#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  BlockNumber; } ;
typedef  int /*<<< orphan*/  PCACHE_DRIVE ;
typedef  TYPE_1__* PCACHE_BLOCK ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

PCACHE_BLOCK FUNC4(PCACHE_DRIVE CacheDrive, ULONG BlockNumber)
{
    PCACHE_BLOCK    CacheBlock = NULL;

    FUNC3("CacheInternalGetBlockPointer() BlockNumber = %d\n", BlockNumber);

    CacheBlock = FUNC1(CacheDrive, BlockNumber);

    if (CacheBlock != NULL)
    {
        FUNC3("Cache hit! BlockNumber: %d CacheBlock->BlockNumber: %d\n", BlockNumber, CacheBlock->BlockNumber);

        return CacheBlock;
    }

    FUNC3("Cache miss! BlockNumber: %d\n", BlockNumber);

    CacheBlock = FUNC0(CacheDrive, BlockNumber);

    // Optimize the block list so it has a LRU structure
    FUNC2(CacheDrive, CacheBlock);

    return CacheBlock;
}