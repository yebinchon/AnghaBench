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
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  TYPE_OF_MEMORY ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ PFN_NUMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FreePagesInLookupTable ; 
 int LoaderPagesSpanned ; 
 int MM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PageLookupTableAddress ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  TotalPagesInLookupTable ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

PVOID FUNC7(SIZE_T MemorySize, TYPE_OF_MEMORY MemoryType)
{
    PFN_NUMBER    PagesNeeded;
    PFN_NUMBER    FirstFreePageFromEnd;
    PVOID    MemPointer;

    if (MemorySize == 0)
    {
        FUNC6("MmAllocateMemory() called for 0 bytes. Returning NULL.\n");
        FUNC5("Memory allocation failed: MmAllocateMemory() called for 0 bytes.");
        return NULL;
    }

    MemorySize = FUNC3(MemorySize, 4);

    // Find out how many blocks it will take to
    // satisfy this allocation
    PagesNeeded = FUNC3(MemorySize, MM_PAGE_SIZE) / MM_PAGE_SIZE;

    // If we don't have enough available mem
    // then return NULL
    if (FreePagesInLookupTable < PagesNeeded)
    {
        FUNC0("Memory allocation failed in MmAllocateMemory(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        FUNC5("Memory allocation failed: out of memory.");
        return NULL;
    }

    FirstFreePageFromEnd = FUNC2(PageLookupTableAddress, TotalPagesInLookupTable, PagesNeeded, FALSE);

    if (FirstFreePageFromEnd == 0)
    {
        FUNC0("Memory allocation failed in MmAllocateMemory(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        FUNC5("Memory allocation failed: out of memory.");
        return NULL;
    }

    FUNC1(PageLookupTableAddress, FirstFreePageFromEnd, PagesNeeded, MemoryType);

    FreePagesInLookupTable -= PagesNeeded;
    MemPointer = (PVOID)((ULONG_PTR)FirstFreePageFromEnd * MM_PAGE_SIZE);

    FUNC4("Allocated %d bytes (%d pages) of memory (type %ld) starting at page 0x%lx.\n",
          MemorySize, PagesNeeded, MemoryType, FirstFreePageFromEnd);
    FUNC4("Memory allocation pointer: 0x%x\n", *MemPointer);

    // Update LoaderPagesSpanned count
    if ((((ULONG_PTR)MemPointer + MemorySize + PAGE_SIZE - 1) >> PAGE_SHIFT) > LoaderPagesSpanned)
        LoaderPagesSpanned = (((ULONG_PTR)MemPointer + MemorySize + PAGE_SIZE - 1) >> PAGE_SHIFT);

    // Now return the pointer
    return MemPointer;
}