#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int BlockSize; int BytesPerSector; } ;
typedef  int SIZE_T ;
typedef  TYPE_1__* PCACHE_DRIVE ;

/* Variables and functions */
 int CacheBlockCount ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int CacheSizeLimit ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

VOID FUNC3(PCACHE_DRIVE CacheDrive)
{
    SIZE_T        NewCacheSize;

    FUNC2("CacheInternalCheckCacheSizeLimits()\n");

    // Calculate the size of the cache if we added a block
    NewCacheSize = (CacheBlockCount + 1) * (CacheDrive->BlockSize * CacheDrive->BytesPerSector);

    // Check the new size against the cache size limit
    if (NewCacheSize > CacheSizeLimit)
    {
        FUNC1(CacheDrive);
        FUNC0(CacheDrive);
    }
}