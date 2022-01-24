#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PBL_BLOCK_DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MmBapCompareBlockAllocatorTableEntry ; 
 int /*<<< orphan*/  MmBlockAllocatorTable ; 
 int /*<<< orphan*/  MmBlockAllocatorTableEntries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

PBL_BLOCK_DESCRIPTOR
FUNC2 (
    ULONG BlockId
    )
{
    ULONG EntryId;

    /* Find the block that matches */
    EntryId = BlockId;
    return FUNC0(MmBlockAllocatorTable,
                          MmBlockAllocatorTableEntries,
                          &EntryId,
                          MmBapCompareBlockAllocatorTableEntry,
                          FUNC1(EntryId),
                          NULL,
                          NULL,
                          NULL);
}