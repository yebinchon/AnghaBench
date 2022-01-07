
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_2__ {size_t PageFrameNumber; int Valid; int Write; } ;
typedef scalar_t__ PHARDWARE_PTE ;


 int KSEG0_BASE ;
 size_t KernelPageTables ;
 int * KernelPageTablesBuffer ;
 size_t MM_PAGE_SHIFT ;
 size_t MM_PAGE_SIZE ;
 TYPE_1__* PDE ;
 size_t PhysicalPageTables ;
 int * PhysicalPageTablesBuffer ;
 int TRACE (char*,size_t) ;

__attribute__((used)) static
VOID
MempAllocatePTE(ULONG Entry, PHARDWARE_PTE *PhysicalPT, PHARDWARE_PTE *KernelPT)
{



    *PhysicalPT = (PHARDWARE_PTE)&PhysicalPageTablesBuffer[PhysicalPageTables*MM_PAGE_SIZE];
    PhysicalPageTables++;

    PDE[Entry].PageFrameNumber = (ULONG)*PhysicalPT >> MM_PAGE_SHIFT;
    PDE[Entry].Valid = 1;
    PDE[Entry].Write = 1;

    if (Entry+(KSEG0_BASE >> 22) > 1023)
    {
        TRACE("WARNING! Entry: %X > 1023\n", Entry+(KSEG0_BASE >> 22));
    }


    *KernelPT = (PHARDWARE_PTE)&KernelPageTablesBuffer[KernelPageTables*MM_PAGE_SIZE];
    KernelPageTables++;

    PDE[Entry+(KSEG0_BASE >> 22)].PageFrameNumber = ((ULONG)*KernelPT >> MM_PAGE_SHIFT);
    PDE[Entry+(KSEG0_BASE >> 22)].Valid = 1;
    PDE[Entry+(KSEG0_BASE >> 22)].Write = 1;
}
