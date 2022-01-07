
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ PageAllocated; } ;
typedef int PVOID ;
typedef TYPE_1__* PPAGE_LOOKUP_TABLE_ITEM ;
typedef scalar_t__ PFN_NUMBER ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ LoaderFree ;
 scalar_t__ MmGetPageNumberFromAddress (int ) ;
 scalar_t__ MmLowestPhysicalPage ;
 int TRUE ;

BOOLEAN MmAreMemoryPagesAvailable(PVOID PageLookupTable, PFN_NUMBER TotalPageCount, PVOID PageAddress, PFN_NUMBER PageCount)
{
    PPAGE_LOOKUP_TABLE_ITEM RealPageLookupTable = (PPAGE_LOOKUP_TABLE_ITEM)PageLookupTable;
    PFN_NUMBER StartPage;
    PFN_NUMBER Index;

    StartPage = MmGetPageNumberFromAddress(PageAddress);

    if (StartPage < MmLowestPhysicalPage) return FALSE;

    StartPage -= MmLowestPhysicalPage;



    if ((StartPage + PageCount) > TotalPageCount)
    {
        return FALSE;
    }

    for (Index = StartPage; Index < (StartPage + PageCount); Index++)
    {


        if (RealPageLookupTable[Index].PageAllocated != LoaderFree)
        {
            return FALSE;
        }
    }

    return TRUE;
}
