
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG64 ;
typedef size_t ULONG ;
struct TYPE_8__ {int Valid; int Write; scalar_t__ PageFrameNumber; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PHARDWARE_PTE ;


 int LoaderMemoryData ;
 TYPE_1__* MmAllocateMemoryWithType (int,int ) ;
 int PAGE_SIZE ;
 scalar_t__ PtrToPfn (TYPE_1__*) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static
PHARDWARE_PTE
MempGetOrCreatePageDir(PHARDWARE_PTE PdeBase, ULONG Index)
{
    PHARDWARE_PTE SubDir;

    if (!PdeBase)
        return ((void*)0);

    if (!PdeBase[Index].Valid)
    {
        SubDir = MmAllocateMemoryWithType(PAGE_SIZE, LoaderMemoryData);
        if (!SubDir)
            return ((void*)0);
        RtlZeroMemory(SubDir, PAGE_SIZE);
        PdeBase[Index].PageFrameNumber = PtrToPfn(SubDir);
        PdeBase[Index].Valid = 1;
        PdeBase[Index].Write = 1;
    }
    else
    {
        SubDir = (PVOID)((ULONG64)(PdeBase[Index].PageFrameNumber) * PAGE_SIZE);
    }
    return SubDir;
}
