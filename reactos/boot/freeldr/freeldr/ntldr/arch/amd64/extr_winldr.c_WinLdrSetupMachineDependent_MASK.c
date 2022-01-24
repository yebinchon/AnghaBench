#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG_PTR ;
typedef  int ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  MachineType; int /*<<< orphan*/ * CommonDataArea; } ;
struct TYPE_6__ {TYPE_1__ I386; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_3__* PLOADER_PARAMETER_BLOCK ;
typedef  int /*<<< orphan*/ * PKGDTENTRY ;
typedef  int /*<<< orphan*/  KTSS ;
typedef  int /*<<< orphan*/  KIDTENTRY ;
typedef  int /*<<< orphan*/  KGDTENTRY ;

/* Variables and functions */
 scalar_t__ DbgPrint ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * GdtIdt ; 
 int /*<<< orphan*/  LoaderMemoryData ; 
 int /*<<< orphan*/  LoaderStartupPcrPage ; 
 int /*<<< orphan*/  MACHINE_TYPE_ISA ; 
 int MM_PAGE_SHIFT ; 
 int MM_PAGE_SIZE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int NUM_GDT ; 
 int NUM_IDT ; 
 int PcrBasePage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int TssBasePage ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    ULONG_PTR Pcr = 0;
    ULONG_PTR Tss = 0;
    ULONG BlockSize, NumPages;

    LoaderBlock->u.I386.CommonDataArea = (PVOID)DbgPrint; // HACK
    LoaderBlock->u.I386.MachineType = MACHINE_TYPE_ISA;

    /* Allocate 2 pages for PCR */
    Pcr = (ULONG_PTR)FUNC1(2 * MM_PAGE_SIZE, LoaderStartupPcrPage);
    PcrBasePage = Pcr >> MM_PAGE_SHIFT;
    if (Pcr == 0)
    {
        FUNC3("Can't allocate PCR.");
        return;
    }
    FUNC2((PVOID)Pcr, 2 * MM_PAGE_SIZE);

    /* Allocate TSS */
    BlockSize = (sizeof(KTSS) + MM_PAGE_SIZE) & ~(MM_PAGE_SIZE - 1);
    Tss = (ULONG_PTR)FUNC1(BlockSize, LoaderMemoryData);
    TssBasePage = Tss >> MM_PAGE_SHIFT;

    /* Allocate space for new GDT + IDT */
    BlockSize = NUM_GDT * sizeof(KGDTENTRY) + NUM_IDT * sizeof(KIDTENTRY);
    NumPages = (BlockSize + MM_PAGE_SIZE - 1) >> MM_PAGE_SHIFT;
    GdtIdt = (PKGDTENTRY)FUNC1(NumPages * MM_PAGE_SIZE, LoaderMemoryData);
    if (GdtIdt == NULL)
    {
        FUNC3("Can't allocate pages for GDT+IDT!");
        return;
    }

    /* Zero newly prepared GDT+IDT */
    FUNC2(GdtIdt, NumPages << MM_PAGE_SHIFT);

    // Before we start mapping pages, create a block of memory, which will contain
    // PDE and PTEs
    if (FUNC0() == FALSE)
    {
        // FIXME: bugcheck
    }

    /* Map stuff like PCR, KI_USER_SHARED_DATA and Apic */
    FUNC4();
}