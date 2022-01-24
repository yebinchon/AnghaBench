#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG64 ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  KGDTENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ GdtIdt ; 
 int /*<<< orphan*/  KGDT64_SYS_TSS ; 
 int KSEG0_BASE ; 
 int MM_PAGE_SHIFT ; 
 int NUM_GDT ; 
 scalar_t__ PxeBase ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int TssBasePage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

VOID
FUNC7(void)
{
    FUNC2("WinLdrSetProcessorContext\n");

    /* Disable Interrupts */
    FUNC6();

    /* Re-initialize EFLAGS */
    FUNC5(0);

    /* Set the new PML4 */
    FUNC4((ULONG64)PxeBase);

    /* Get kernel mode address of gdt / idt */
    GdtIdt = (PVOID)((ULONG64)GdtIdt + KSEG0_BASE);

    /* Create gdt entries and load gdtr */
    FUNC0(GdtIdt, KSEG0_BASE | (TssBasePage << MM_PAGE_SHIFT));

    /* Copy old Idt and set idtr */
    FUNC1((PVOID)((ULONG64)GdtIdt + NUM_GDT * sizeof(KGDTENTRY)));

    /* LDT is unused */
//    __lldt(0);

    /* Load TSR */
    FUNC3(KGDT64_SYS_TSS);

    FUNC2("leave WinLdrSetProcessorContext\n");
}