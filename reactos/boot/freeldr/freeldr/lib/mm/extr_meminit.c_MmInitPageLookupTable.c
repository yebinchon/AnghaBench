
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int BasePage; int PageCount; int MemoryType; } ;
typedef scalar_t__ PVOID ;
typedef int PFN_NUMBER ;
typedef int PAGE_LOOKUP_TABLE_ITEM ;
typedef TYPE_1__ FREELDR_MEMORY_DESCRIPTOR ;


 TYPE_1__* ArcGetMemoryDescriptor (TYPE_1__ const*) ;
 int LoaderFirmwarePermanent ;
 int LoaderFirmwareTemporary ;
 int MM_PAGE_SIZE ;
 int MmGetPageNumberFromAddress (scalar_t__) ;
 int MmGetSystemMemoryMapTypeString (int ) ;
 int MmLowestPhysicalPage ;
 int MmMarkPagesInLookupTable (scalar_t__,int,int,int ) ;
 scalar_t__ ROUND_UP (int,int ) ;
 int TRACE (char*,...) ;

VOID MmInitPageLookupTable(PVOID PageLookupTable, PFN_NUMBER TotalPageCount)
{
    const FREELDR_MEMORY_DESCRIPTOR* MemoryDescriptor = ((void*)0);
    PFN_NUMBER PageLookupTableStartPage;
    PFN_NUMBER PageLookupTablePageCount;

    TRACE("MmInitPageLookupTable()\n");




    MmMarkPagesInLookupTable(PageLookupTable, MmLowestPhysicalPage, TotalPageCount, LoaderFirmwarePermanent);


    while ((MemoryDescriptor = ArcGetMemoryDescriptor(MemoryDescriptor)) != ((void*)0))
    {


        if (MemoryDescriptor->BasePage + MemoryDescriptor->PageCount <= TotalPageCount)
        {
            TRACE("Marking pages 0x%lx-0x%lx as type %s\n",
                  MemoryDescriptor->BasePage,
                  MemoryDescriptor->BasePage + MemoryDescriptor->PageCount,
                  MmGetSystemMemoryMapTypeString(MemoryDescriptor->MemoryType));
            MmMarkPagesInLookupTable(PageLookupTable,
                                     MemoryDescriptor->BasePage,
                                     MemoryDescriptor->PageCount,
                                     MemoryDescriptor->MemoryType);
        }
        else
            TRACE("Ignoring pages 0x%lx-0x%lx (%s)\n",
                  MemoryDescriptor->BasePage,
                  MemoryDescriptor->BasePage + MemoryDescriptor->PageCount,
                  MmGetSystemMemoryMapTypeString(MemoryDescriptor->MemoryType));
    }


    PageLookupTableStartPage = MmGetPageNumberFromAddress(PageLookupTable);
    PageLookupTablePageCount = MmGetPageNumberFromAddress((PVOID)((ULONG_PTR)PageLookupTable + ROUND_UP(TotalPageCount * sizeof(PAGE_LOOKUP_TABLE_ITEM), MM_PAGE_SIZE))) - PageLookupTableStartPage;
    TRACE("Marking the page lookup table pages as reserved StartPage: 0x%x PageCount: 0x%x\n", PageLookupTableStartPage, PageLookupTablePageCount);
    MmMarkPagesInLookupTable(PageLookupTable, PageLookupTableStartPage, PageLookupTablePageCount, LoaderFirmwareTemporary);
}
