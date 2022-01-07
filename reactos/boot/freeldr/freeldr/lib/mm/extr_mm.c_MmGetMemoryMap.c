
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PPAGE_LOOKUP_TABLE_ITEM ;
typedef int PFN_NUMBER ;


 int PageLookupTableAddress ;
 int TotalPagesInLookupTable ;

PPAGE_LOOKUP_TABLE_ITEM MmGetMemoryMap(PFN_NUMBER *NoEntries)
{
    PPAGE_LOOKUP_TABLE_ITEM RealPageLookupTable = (PPAGE_LOOKUP_TABLE_ITEM)PageLookupTableAddress;

    *NoEntries = TotalPagesInLookupTable;

    return RealPageLookupTable;
}
