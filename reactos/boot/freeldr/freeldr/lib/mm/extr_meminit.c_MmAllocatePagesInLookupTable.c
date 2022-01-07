
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int TYPE_OF_MEMORY ;
struct TYPE_2__ {size_t PageAllocationLength; int PageAllocated; } ;
typedef int PVOID ;
typedef TYPE_1__* PPAGE_LOOKUP_TABLE_ITEM ;
typedef size_t PFN_NUMBER ;


 scalar_t__ MmLowestPhysicalPage ;

VOID MmAllocatePagesInLookupTable(PVOID PageLookupTable, PFN_NUMBER StartPage, PFN_NUMBER PageCount, TYPE_OF_MEMORY MemoryType)
{
    PPAGE_LOOKUP_TABLE_ITEM RealPageLookupTable = (PPAGE_LOOKUP_TABLE_ITEM)PageLookupTable;
    PFN_NUMBER Index;

    StartPage -= MmLowestPhysicalPage;
    for (Index=StartPage; Index<(StartPage+PageCount); Index++)
    {
        RealPageLookupTable[Index].PageAllocated = MemoryType;
        RealPageLookupTable[Index].PageAllocationLength = (Index == StartPage) ? PageCount : 0;
    }
}
