#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG64 ;
typedef  size_t ULONG ;
struct TYPE_5__ {int Valid; int Write; int PageFrameNumber; } ;
typedef  TYPE_1__* PHARDWARE_PTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 TYPE_1__* PxeBase ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static
BOOLEAN
FUNC6(ULONG64 VirtualAddress, ULONG64 PhysicalAddress)
{
    PHARDWARE_PTE PpeBase, PdeBase, PteBase;
    ULONG Index;

    PpeBase = FUNC1(PxeBase, FUNC5(VirtualAddress));
    PdeBase = FUNC1(PpeBase, FUNC3(VirtualAddress));
    PteBase = FUNC1(PdeBase, FUNC2(VirtualAddress));

    if (!PteBase)
    {
        FUNC0("!!!No Dir %p, %p, %p, %p\n", PxeBase, PpeBase, PdeBase, PteBase);
        return FALSE;
    }

    Index = FUNC4(VirtualAddress);
    if (PteBase[Index].Valid)
    {
        FUNC0("!!!Already mapped %ld\n", Index);
        return FALSE;
    }

    PteBase[Index].Valid = 1;
    PteBase[Index].Write = 1;
    PteBase[Index].PageFrameNumber = PhysicalAddress / PAGE_SIZE;

    return TRUE;
}