
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG64 ;
typedef size_t ULONG ;
struct TYPE_5__ {int Valid; int Write; int PageFrameNumber; } ;
typedef TYPE_1__* PHARDWARE_PTE ;
typedef int BOOLEAN ;


 int ERR (char*,...) ;
 int FALSE ;
 TYPE_1__* MempGetOrCreatePageDir (TYPE_1__*,int ) ;
 int PAGE_SIZE ;
 TYPE_1__* PxeBase ;
 int TRUE ;
 int VAtoPDI (int) ;
 int VAtoPPI (int) ;
 size_t VAtoPTI (int) ;
 int VAtoPXI (int) ;

__attribute__((used)) static
BOOLEAN
MempMapSinglePage(ULONG64 VirtualAddress, ULONG64 PhysicalAddress)
{
    PHARDWARE_PTE PpeBase, PdeBase, PteBase;
    ULONG Index;

    PpeBase = MempGetOrCreatePageDir(PxeBase, VAtoPXI(VirtualAddress));
    PdeBase = MempGetOrCreatePageDir(PpeBase, VAtoPPI(VirtualAddress));
    PteBase = MempGetOrCreatePageDir(PdeBase, VAtoPDI(VirtualAddress));

    if (!PteBase)
    {
        ERR("!!!No Dir %p, %p, %p, %p\n", PxeBase, PpeBase, PdeBase, PteBase);
        return FALSE;
    }

    Index = VAtoPTI(VirtualAddress);
    if (PteBase[Index].Valid)
    {
        ERR("!!!Already mapped %ld\n", Index);
        return FALSE;
    }

    PteBase[Index].Valid = 1;
    PteBase[Index].Write = 1;
    PteBase[Index].PageFrameNumber = PhysicalAddress / PAGE_SIZE;

    return TRUE;
}
