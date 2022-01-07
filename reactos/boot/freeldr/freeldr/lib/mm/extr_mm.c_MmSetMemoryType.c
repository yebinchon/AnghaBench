
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TYPE_OF_MEMORY ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int PFN_NUMBER ;


 int MM_PAGE_SIZE ;
 int MmAllocatePagesInLookupTable (int ,int,int,int ) ;
 int MmGetPageNumberFromAddress (int ) ;
 int PageLookupTableAddress ;
 int ROUND_UP (int ,int) ;

VOID MmSetMemoryType(PVOID MemoryAddress, SIZE_T MemorySize, TYPE_OF_MEMORY NewType)
{
    PFN_NUMBER PagesNeeded;
    PFN_NUMBER StartPageNumber;



    PagesNeeded = ROUND_UP(MemorySize, MM_PAGE_SIZE) / MM_PAGE_SIZE;


    StartPageNumber = MmGetPageNumberFromAddress(MemoryAddress);


    MmAllocatePagesInLookupTable(PageLookupTableAddress, StartPageNumber, PagesNeeded, NewType);
}
