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
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  TYPE_OF_MEMORY ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ PFN_NUMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FreePagesInLookupTable ; 
 scalar_t__ LoaderPagesSpanned ; 
 scalar_t__ MM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  PageLookupTableAddress ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  TotalPagesInLookupTable ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

PVOID FUNC7(SIZE_T MemorySize, PVOID DesiredAddress, TYPE_OF_MEMORY MemoryType)
{
    PFN_NUMBER        PagesNeeded;
    PFN_NUMBER        FirstFreePageFromEnd;
    PFN_NUMBER        DesiredAddressPageNumber;
    PVOID    MemPointer;

    if (MemorySize == 0)
    {
        FUNC6("MmAllocateHighestMemoryBelowAddress() called for 0 bytes. Returning NULL.\n");
        FUNC5("Memory allocation failed: MmAllocateHighestMemoryBelowAddress() called for 0 bytes.");
        return NULL;
    }

    // Find out how many blocks it will take to
    // satisfy this allocation
    PagesNeeded = FUNC3(MemorySize, MM_PAGE_SIZE) / MM_PAGE_SIZE;

    // Get the page number for their desired address
    DesiredAddressPageNumber = (ULONG_PTR)DesiredAddress / MM_PAGE_SIZE;

    // If we don't have enough available mem
    // then return NULL
    if (FreePagesInLookupTable < PagesNeeded)
    {
        FUNC0("Memory allocation failed in MmAllocateHighestMemoryBelowAddress(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        FUNC5("Memory allocation failed: out of memory.");
        return NULL;
    }

    FirstFreePageFromEnd = FUNC2(PageLookupTableAddress, TotalPagesInLookupTable, PagesNeeded, DesiredAddressPageNumber);

    if (FirstFreePageFromEnd == 0)
    {
        FUNC0("Memory allocation failed in MmAllocateHighestMemoryBelowAddress(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        FUNC5("Memory allocation failed: out of memory.");
        return NULL;
    }

    FUNC1(PageLookupTableAddress, FirstFreePageFromEnd, PagesNeeded, MemoryType);

    FreePagesInLookupTable -= PagesNeeded;
    MemPointer = (PVOID)((ULONG_PTR)FirstFreePageFromEnd * MM_PAGE_SIZE);

    FUNC4("Allocated %d bytes (%d pages) of memory starting at page %d.\n", &MemorySize, PagesNeeded, FirstFreePageFromEnd);
    FUNC4("Memory allocation pointer: 0x%x\n", MemPointer);

    // Update LoaderPagesSpanned count
    if ((((ULONG_PTR)MemPointer + MemorySize) >> PAGE_SHIFT) > LoaderPagesSpanned)
        LoaderPagesSpanned = (((ULONG_PTR)MemPointer + MemorySize) >> PAGE_SHIFT);

    // Now return the pointer
    return MemPointer;
}