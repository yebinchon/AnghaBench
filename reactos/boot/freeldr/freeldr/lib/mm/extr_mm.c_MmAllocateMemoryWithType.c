
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int TYPE_OF_MEMORY ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef scalar_t__ PFN_NUMBER ;


 int ERR (char*,int) ;
 int FALSE ;
 scalar_t__ FreePagesInLookupTable ;
 int LoaderPagesSpanned ;
 int MM_PAGE_SIZE ;
 int MmAllocatePagesInLookupTable (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ MmFindAvailablePages (int ,int ,scalar_t__,int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PageLookupTableAddress ;
 int ROUND_UP (int,int) ;
 int TRACE (char*,int,...) ;
 int TotalPagesInLookupTable ;
 int UiMessageBoxCritical (char*) ;
 int WARN (char*) ;

PVOID MmAllocateMemoryWithType(SIZE_T MemorySize, TYPE_OF_MEMORY MemoryType)
{
    PFN_NUMBER PagesNeeded;
    PFN_NUMBER FirstFreePageFromEnd;
    PVOID MemPointer;

    if (MemorySize == 0)
    {
        WARN("MmAllocateMemory() called for 0 bytes. Returning NULL.\n");
        UiMessageBoxCritical("Memory allocation failed: MmAllocateMemory() called for 0 bytes.");
        return ((void*)0);
    }

    MemorySize = ROUND_UP(MemorySize, 4);



    PagesNeeded = ROUND_UP(MemorySize, MM_PAGE_SIZE) / MM_PAGE_SIZE;



    if (FreePagesInLookupTable < PagesNeeded)
    {
        ERR("Memory allocation failed in MmAllocateMemory(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        UiMessageBoxCritical("Memory allocation failed: out of memory.");
        return ((void*)0);
    }

    FirstFreePageFromEnd = MmFindAvailablePages(PageLookupTableAddress, TotalPagesInLookupTable, PagesNeeded, FALSE);

    if (FirstFreePageFromEnd == 0)
    {
        ERR("Memory allocation failed in MmAllocateMemory(). Not enough free memory to allocate %d bytes.\n", MemorySize);
        UiMessageBoxCritical("Memory allocation failed: out of memory.");
        return ((void*)0);
    }

    MmAllocatePagesInLookupTable(PageLookupTableAddress, FirstFreePageFromEnd, PagesNeeded, MemoryType);

    FreePagesInLookupTable -= PagesNeeded;
    MemPointer = (PVOID)((ULONG_PTR)FirstFreePageFromEnd * MM_PAGE_SIZE);

    TRACE("Allocated %d bytes (%d pages) of memory (type %ld) starting at page 0x%lx.\n",
          MemorySize, PagesNeeded, MemoryType, FirstFreePageFromEnd);
    TRACE("Memory allocation pointer: 0x%x\n", MemPointer);


    if ((((ULONG_PTR)MemPointer + MemorySize + PAGE_SIZE - 1) >> PAGE_SHIFT) > LoaderPagesSpanned)
        LoaderPagesSpanned = (((ULONG_PTR)MemPointer + MemorySize + PAGE_SIZE - 1) >> PAGE_SHIFT);


    return MemPointer;
}
