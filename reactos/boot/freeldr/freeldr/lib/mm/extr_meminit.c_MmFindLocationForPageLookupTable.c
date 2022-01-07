
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ MemoryType; int PageCount; int BasePage; } ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef int PFN_NUMBER ;
typedef int PAGE_LOOKUP_TABLE_ITEM ;
typedef TYPE_1__ FREELDR_MEMORY_DESCRIPTOR ;


 TYPE_1__* ArcGetMemoryDescriptor (TYPE_1__ const*) ;
 scalar_t__ LoaderFree ;
 scalar_t__ MM_MAX_PAGE ;
 int MM_PAGE_SIZE ;
 int PAGE_SIZE ;
 int TRACE (char*,int *) ;
 int min (int,scalar_t__) ;

PVOID MmFindLocationForPageLookupTable(PFN_NUMBER TotalPageCount)
{
    const FREELDR_MEMORY_DESCRIPTOR* MemoryDescriptor = ((void*)0);
    SIZE_T PageLookupTableSize;
    PFN_NUMBER RequiredPages;
    PFN_NUMBER CandidateBasePage = 0;
    PFN_NUMBER CandidatePageCount;
    PFN_NUMBER PageLookupTableEndPage;
    PVOID PageLookupTableMemAddress = ((void*)0);


    PageLookupTableSize = TotalPageCount * sizeof(PAGE_LOOKUP_TABLE_ITEM);
    RequiredPages = PageLookupTableSize / MM_PAGE_SIZE;


    while ((MemoryDescriptor = ArcGetMemoryDescriptor(MemoryDescriptor)) != ((void*)0))
    {

        if (MemoryDescriptor->MemoryType != LoaderFree) continue;


        if (MemoryDescriptor->PageCount < RequiredPages) continue;


        if (MemoryDescriptor->BasePage < CandidateBasePage) continue;


        if (MemoryDescriptor->BasePage + RequiredPages >= MM_MAX_PAGE) continue;


        CandidateBasePage = MemoryDescriptor->BasePage;
        CandidatePageCount = MemoryDescriptor->PageCount;
    }


    PageLookupTableEndPage = min(CandidateBasePage + CandidatePageCount,
                                 MM_MAX_PAGE);


    PageLookupTableMemAddress = (PVOID)((PageLookupTableEndPage * PAGE_SIZE)
                                        - PageLookupTableSize);

    TRACE("MmFindLocationForPageLookupTable() returning 0x%x\n", PageLookupTableMemAddress);

    return PageLookupTableMemAddress;
}
