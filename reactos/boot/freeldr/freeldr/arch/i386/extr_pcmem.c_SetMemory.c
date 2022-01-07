
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG_PTR ;
typedef int TYPE_OF_MEMORY ;
typedef int SIZE_T ;
typedef int PFREELDR_MEMORY_DESCRIPTOR ;


 int ADDRESS_AND_SIZE_TO_SPAN_PAGES (int,int ) ;
 int AddMemoryDescriptor (int ,int ,int,int,int ) ;
 int MAX_BIOS_DESCRIPTORS ;
 int PAGE_SIZE ;
 int PcMapCount ;

VOID
SetMemory(
    PFREELDR_MEMORY_DESCRIPTOR MemoryMap,
    ULONG_PTR BaseAddress,
    SIZE_T Size,
    TYPE_OF_MEMORY MemoryType)
{
    ULONG_PTR BasePage, PageCount;

    BasePage = BaseAddress / PAGE_SIZE;
    PageCount = ADDRESS_AND_SIZE_TO_SPAN_PAGES(BaseAddress, Size);


    PcMapCount = AddMemoryDescriptor(MemoryMap,
                                     MAX_BIOS_DESCRIPTORS,
                                     BasePage,
                                     PageCount,
                                     MemoryType);
}
