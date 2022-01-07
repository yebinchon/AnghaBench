
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ PageAllocated; } ;
typedef int PVOID ;
typedef TYPE_1__* PPAGE_LOOKUP_TABLE_ITEM ;
typedef int PFN_NUMBER ;
typedef scalar_t__ BOOLEAN ;


 int LastFreePageHint ;
 scalar_t__ LoaderFree ;
 int MmLowestPhysicalPage ;
 int TRACE (char*,int,int) ;

PFN_NUMBER MmFindAvailablePages(PVOID PageLookupTable, PFN_NUMBER TotalPageCount, PFN_NUMBER PagesNeeded, BOOLEAN FromEnd)
{
    PPAGE_LOOKUP_TABLE_ITEM RealPageLookupTable = (PPAGE_LOOKUP_TABLE_ITEM)PageLookupTable;
    PFN_NUMBER AvailablePagesSoFar;
    PFN_NUMBER Index;

    if (LastFreePageHint > TotalPageCount)
    {
        LastFreePageHint = TotalPageCount;
    }

    AvailablePagesSoFar = 0;
    if (FromEnd)
    {

        for (Index=LastFreePageHint-1; Index>0; Index--)
        {
            if (RealPageLookupTable[Index].PageAllocated != LoaderFree)
            {
                AvailablePagesSoFar = 0;
                continue;
            }
            else
            {
                AvailablePagesSoFar++;
            }

            if (AvailablePagesSoFar >= PagesNeeded)
            {
                return Index + MmLowestPhysicalPage;
            }
        }
    }
    else
    {
        TRACE("Alloc low memory, LastFreePageHint 0x%x, TPC 0x%x\n", LastFreePageHint, TotalPageCount);

        for (Index=1; Index < LastFreePageHint; Index++)
        {
            if (RealPageLookupTable[Index].PageAllocated != LoaderFree)
            {
                AvailablePagesSoFar = 0;
                continue;
            }
            else
            {
                AvailablePagesSoFar++;
            }

            if (AvailablePagesSoFar >= PagesNeeded)
            {
                return Index - AvailablePagesSoFar + 1 + MmLowestPhysicalPage;
            }
        }
    }

    return 0;
}
