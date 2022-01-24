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
typedef  TYPE_3__* PLOADER_PARAMETER_BLOCK ;
typedef  int /*<<< orphan*/ * PKGDTENTRY ;
typedef  int /*<<< orphan*/  KTSS ;
typedef  int /*<<< orphan*/  KIDTENTRY ;
typedef  int /*<<< orphan*/  KGDTENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * GdtIdt ; 
 int /*<<< orphan*/  LoaderMemoryData ; 
 int /*<<< orphan*/  LoaderStartupPcrPage ; 
 int /*<<< orphan*/  MACHINE_TYPE_ISA ; 
 int MM_PAGE_SHIFT ; 
 int MM_PAGE_SIZE ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int NUM_GDT ; 
 int NUM_IDT ; 
 int PcrBasePage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int TssBasePage ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    ULONG TssSize;
    //ULONG TssPages;
    ULONG_PTR Pcr = 0;
    ULONG_PTR Tss = 0;
    ULONG BlockSize, NumPages;

    LoaderBlock->u.I386.CommonDataArea = NULL; // Force No ABIOS support
    LoaderBlock->u.I386.MachineType = MACHINE_TYPE_ISA;

    /* Allocate 2 pages for PCR: one for the boot processor PCR and one for KI_USER_SHARED_DATA */
    Pcr = (ULONG_PTR)FUNC2(2 * MM_PAGE_SIZE, LoaderStartupPcrPage);
    PcrBasePage = Pcr >> MM_PAGE_SHIFT;
    if (Pcr == 0)
    {
        FUNC4("Could not allocate PCR.");
        return;
    }

    /* Allocate TSS */
    TssSize = (sizeof(KTSS) + MM_PAGE_SIZE) & ~(MM_PAGE_SIZE - 1);
    //TssPages = TssSize / MM_PAGE_SIZE;

    Tss = (ULONG_PTR)FUNC2(TssSize, LoaderMemoryData);
    TssBasePage = Tss >> MM_PAGE_SHIFT;
    if (Tss == 0)
    {
        FUNC4("Could not allocate TSS.");
        return;
    }

    /* Allocate space for new GDT + IDT */
    BlockSize = NUM_GDT*sizeof(KGDTENTRY) + NUM_IDT*sizeof(KIDTENTRY);//FIXME: Use GDT/IDT limits here?
    NumPages = (BlockSize + MM_PAGE_SIZE - 1) >> MM_PAGE_SHIFT;
    GdtIdt = (PKGDTENTRY)FUNC2(NumPages * MM_PAGE_SIZE, LoaderMemoryData);
    if (GdtIdt == NULL)
    {
        FUNC4("Could not allocate pages for GDT+IDT!");
        return;
    }

    /* Zero newly prepared GDT+IDT */
    FUNC3(GdtIdt, NumPages << MM_PAGE_SHIFT);

    // Before we start mapping pages, create a block of memory, which will contain
    // PDE and PTEs
    if (FUNC1() == FALSE)
    {
        FUNC0("MempAllocatePageTables failed!\n");
    }

    /* Map stuff like PCR, KI_USER_SHARED_DATA and Apic */
    FUNC5();

    /* Set some special fields */
    FUNC6();
}