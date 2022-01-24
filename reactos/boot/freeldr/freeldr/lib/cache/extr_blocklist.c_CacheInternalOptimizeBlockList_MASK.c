#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {int /*<<< orphan*/ * Flink; } ;
struct TYPE_7__ {int /*<<< orphan*/  ListEntry; } ;
struct TYPE_6__ {TYPE_3__ CacheBlockHead; } ;
typedef  TYPE_1__* PCACHE_DRIVE ;
typedef  TYPE_2__* PCACHE_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

VOID FUNC3(PCACHE_DRIVE CacheDrive, PCACHE_BLOCK CacheBlock)
{

    FUNC2("CacheInternalOptimizeBlockList()\n");

    // Don't do this if this block is already at the head of the list
    if (&CacheBlock->ListEntry != CacheDrive->CacheBlockHead.Flink)
    {
        // Remove this item from the block list
        FUNC1(&CacheBlock->ListEntry);

        // Re-insert it at the head of the list
        FUNC0(&CacheDrive->CacheBlockHead, &CacheBlock->ListEntry);
    }
}