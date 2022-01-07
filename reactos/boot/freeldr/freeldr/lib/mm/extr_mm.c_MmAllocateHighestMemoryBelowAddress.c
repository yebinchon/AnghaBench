
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int TYPE_OF_MEMORY ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef scalar_t__ PFN_NUMBER ;


 int ERR (char*,int ) ;
 scalar_t__ FreePagesInLookupTable ;
 scalar_t__ LoaderPagesSpanned ;
 scalar_t__ MM_PAGE_SIZE ;
 int MmAllocatePagesInLookupTable (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ MmFindAvailablePagesBeforePage (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ PAGE_SHIFT ;
 int PageLookupTableAddress ;
 scalar_t__ ROUND_UP (int ,scalar_t__) ;
 int TRACE (char*,int *,...) ;
 int TotalPagesInLookupTable ;
 int UiMessageBoxCritical (char*) ;
 int WARN (char*) ;

PVOID MmAllocateHighestMemoryBelowAddress(SIZE_T MemorySize, PVOID DesiredAddress, TYPE_OF_MEMORY MemoryType)
{
    PFN_NUMBER PagesNeeded;
    PFN_NUMBER FirstFreePageFromEnd;
    PFN_NUMBER DesiredAddressPageNumber;
    PVOID MemPointer;

    if (MemorySize == 0)
    {
        WARN("MmAllocateHighestMemoryBelowAddress() called for 0 bytes. Returning NULL.\n");
        UiMessageBoxCritical("Memory allocation failed: MmAllocateHighestMemoryBelowAddress() called for 0 bytes.");
        return ((void*)0);
    }



    PagesNeeded = ROUND_UP(MemorySize, MM_PAGE_SIZE) / MM_PAGE_SIZE;


    DesiredAddressPageNumber = (ULONG_PTR)DesiredAddress / MM_PAGE_SIZE;



    if (FreePagesInLookupTable < PagesNeeded)
    {
        ERR("Memory allocation failed in MmAllocateHighestMemoryBelowAddress(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        UiMessageBoxCritical("Memory allocation failed: out of memory.");
        return ((void*)0);
    }

    FirstFreePageFromEnd = MmFindAvailablePagesBeforePage(PageLookupTableAddress, TotalPagesInLookupTable, PagesNeeded, DesiredAddressPageNumber);

    if (FirstFreePageFromEnd == 0)
    {
        ERR("Memory allocation failed in MmAllocateHighestMemoryBelowAddress(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        UiMessageBoxCritical("Memory allocation failed: out of memory.");
        return ((void*)0);
    }

    MmAllocatePagesInLookupTable(PageLookupTableAddress, FirstFreePageFromEnd, PagesNeeded, MemoryType);

    FreePagesInLookupTable -= PagesNeeded;
    MemPointer = (PVOID)((ULONG_PTR)FirstFreePageFromEnd * MM_PAGE_SIZE);

    TRACE("Allocated %d bytes (%d pages) of memory starting at page %d.\n", MemorySize, PagesNeeded, FirstFreePageFromEnd);
    TRACE("Memory allocation pointer: 0x%x\n", MemPointer);


    if ((((ULONG_PTR)MemPointer + MemorySize) >> PAGE_SHIFT) > LoaderPagesSpanned)
        LoaderPagesSpanned = (((ULONG_PTR)MemPointer + MemorySize) >> PAGE_SHIFT);


    return MemPointer;
}
