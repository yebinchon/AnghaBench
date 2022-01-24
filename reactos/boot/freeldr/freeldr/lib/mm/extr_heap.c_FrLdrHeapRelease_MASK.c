#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_10__ {int Size; scalar_t__ Tag; int /*<<< orphan*/  Data; } ;
struct TYPE_9__ {scalar_t__ MaximumSize; TYPE_2__ Blocks; } ;
typedef  TYPE_1__* PVOID ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_2__* PHEAP_BLOCK ;
typedef  TYPE_1__* PHEAP ;
typedef  scalar_t__ PFN_COUNT ;
typedef  int /*<<< orphan*/  HEAP_BLOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  LoaderFree ; 
 scalar_t__ MM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PageLookupTableAddress ; 
 scalar_t__* FUNC4 (TYPE_2__*) ; 
 scalar_t__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ REDZONE_MARK ; 
 int* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*,...) ; 

VOID
FUNC8(
    PVOID HeapHandle)
{
    PHEAP Heap = HeapHandle;
    PHEAP_BLOCK Block;
    PUCHAR StartAddress, EndAddress;
    PFN_COUNT FreePages, AllFreePages = 0;

    FUNC7("HeapRelease(%p)\n", HeapHandle);

    /* Loop all heap chunks */
    for (Block = &Heap->Blocks;
         Block->Size != 0;
         Block = Block + 1 + Block->Size)
    {
        /* Continue, if its not free */
        if (Block->Tag != 0)
        {
#ifdef FREELDR_HEAP_VERIFIER
            /* Verify size and redzones */
            ASSERT(*REDZONE_SIZE(Block) <= Block->Size * sizeof(HEAP_BLOCK));
            ASSERT(*REDZONE_LOW(Block) == REDZONE_MARK);
            ASSERT(*REDZONE_HI(Block) == REDZONE_MARK);
#endif
            continue;
        }

        /* Calculate page aligned start address of the free region */
        StartAddress = FUNC1(Block->Data, PAGE_SIZE);

        /* Walk over adjacent free blocks */
        while (Block->Tag == 0) Block = Block + Block->Size + 1;

        /* Check if this was the last block */
        if (Block->Size == 0)
        {
            /* Align the end address up to cover the end of the heap */
            EndAddress = FUNC1(Block->Data, PAGE_SIZE);
        }
        else
        {
            /* Align the end address down to not cover any allocations */
            EndAddress = FUNC0(Block->Data, PAGE_SIZE);
        }

        /* Check if we have free pages */
        if (EndAddress > StartAddress)
        {
            /* Calculate the size of the free region in pages */
            FreePages = (PFN_COUNT)((EndAddress - StartAddress) / MM_PAGE_SIZE);
            AllFreePages += FreePages;

            /* Now mark the pages free */
            FUNC3(PageLookupTableAddress,
                                     (ULONG_PTR)StartAddress / MM_PAGE_SIZE,
                                     FreePages,
                                     LoaderFree);
        }

        /* bail out, if it was the last block */
        if (Block->Size == 0) break;
    }

    FUNC7("HeapRelease() done, freed %lu of %lu pages\n", AllFreePages, Heap->MaximumSize / MM_PAGE_SIZE);
}