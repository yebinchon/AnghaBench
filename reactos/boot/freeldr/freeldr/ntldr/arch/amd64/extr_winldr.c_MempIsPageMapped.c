
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG64 ;
typedef size_t ULONG ;
struct TYPE_10__ {scalar_t__ PageFrameNumber; int Valid; } ;
struct TYPE_9__ {int Valid; scalar_t__ PageFrameNumber; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PHARDWARE_PTE ;
typedef int BOOLEAN ;


 int FALSE ;
 int PAGE_SIZE ;
 TYPE_7__* PxeBase ;
 int TRUE ;
 size_t VAtoPDI (TYPE_1__*) ;
 size_t VAtoPPI (TYPE_1__*) ;
 size_t VAtoPTI (TYPE_1__*) ;
 size_t VAtoPXI (TYPE_1__*) ;

BOOLEAN
MempIsPageMapped(PVOID VirtualAddress)
{
    PHARDWARE_PTE PpeBase, PdeBase, PteBase;
    ULONG Index;

    Index = VAtoPXI(VirtualAddress);
    if (!PxeBase[Index].Valid)
        return FALSE;

    PpeBase = (PVOID)((ULONG64)(PxeBase[Index].PageFrameNumber) * PAGE_SIZE);
    Index = VAtoPPI(VirtualAddress);
    if (!PpeBase[Index].Valid)
        return FALSE;

    PdeBase = (PVOID)((ULONG64)(PpeBase[Index].PageFrameNumber) * PAGE_SIZE);
    Index = VAtoPDI(VirtualAddress);
    if (!PdeBase[Index].Valid)
        return FALSE;

    PteBase = (PVOID)((ULONG64)(PdeBase[Index].PageFrameNumber) * PAGE_SIZE);
    Index = VAtoPTI(VirtualAddress);
    if (!PteBase[Index].Valid)
        return FALSE;

    return TRUE;
}
