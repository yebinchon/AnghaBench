
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ PageAllocated; } ;
typedef int PVOID ;
typedef TYPE_1__* PPAGE_LOOKUP_TABLE_ITEM ;
typedef scalar_t__ PFN_NUMBER ;


 scalar_t__ LoaderFree ;
 scalar_t__ MmFindAvailablePages (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ MmLowestPhysicalPage ;
 int TRUE ;

PFN_NUMBER MmFindAvailablePagesBeforePage(PVOID PageLookupTable, PFN_NUMBER TotalPageCount, PFN_NUMBER PagesNeeded, PFN_NUMBER LastPage)
{
    PPAGE_LOOKUP_TABLE_ITEM RealPageLookupTable = (PPAGE_LOOKUP_TABLE_ITEM)PageLookupTable;
    PFN_NUMBER AvailablePagesSoFar;
    PFN_NUMBER Index;

    if (LastPage > TotalPageCount)
    {
        return MmFindAvailablePages(PageLookupTable, TotalPageCount, PagesNeeded, TRUE);
    }

    AvailablePagesSoFar = 0;
    for (Index=LastPage-1; Index>0; Index--)
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

    return 0;
}
