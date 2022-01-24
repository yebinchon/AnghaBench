#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG64 ;
struct TYPE_2__ {int Limit; int /*<<< orphan*/  Base; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int* PULONG64 ;
typedef  scalar_t__ PKGDTENTRY64 ;
typedef  int /*<<< orphan*/  KTSS ;
typedef  int /*<<< orphan*/  KGDTENTRY ;
typedef  TYPE_1__ KDESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  I386_TSS ; 
 int /*<<< orphan*/  KGDT64_NULL ; 
 int /*<<< orphan*/  KGDT64_R0_CODE ; 
 int /*<<< orphan*/  KGDT64_R0_DATA ; 
 int /*<<< orphan*/  KGDT64_R3_CMCODE ; 
 int /*<<< orphan*/  KGDT64_R3_CMTEB ; 
 int /*<<< orphan*/  KGDT64_R3_CODE ; 
 int /*<<< orphan*/  KGDT64_R3_DATA ; 
 int /*<<< orphan*/  KGDT64_SYS_TSS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUM_GDT ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static
VOID
FUNC4(PVOID GdtBase, ULONG64 TssBase)
{
    PKGDTENTRY64 Entry;
    KDESCRIPTOR GdtDesc;
    FUNC2("Amd64SetupGdt(GdtBase = %p, TssBase = %p)\n", GdtBase, TssBase);

    /* Setup KGDT64_NULL */
    Entry = FUNC0(GdtBase, KGDT64_NULL);
    *(PULONG64)Entry = 0x0000000000000000ULL;

    /* Setup KGDT64_R0_CODE */
    Entry = FUNC0(GdtBase, KGDT64_R0_CODE);
    *(PULONG64)Entry = 0x00209b0000000000ULL;

    /* Setup KGDT64_R0_DATA */
    Entry = FUNC0(GdtBase, KGDT64_R0_DATA);
    *(PULONG64)Entry = 0x00cf93000000ffffULL;

    /* Setup KGDT64_R3_CMCODE */
    Entry = FUNC0(GdtBase, KGDT64_R3_CMCODE);
    *(PULONG64)Entry = 0x00cffb000000ffffULL;

    /* Setup KGDT64_R3_DATA */
    Entry = FUNC0(GdtBase, KGDT64_R3_DATA);
    *(PULONG64)Entry = 0x00cff3000000ffffULL;

    /* Setup KGDT64_R3_CODE */
    Entry = FUNC0(GdtBase, KGDT64_R3_CODE);
    *(PULONG64)Entry = 0x0020fb0000000000ULL;

    /* Setup KGDT64_R3_CMTEB */
    Entry = FUNC0(GdtBase, KGDT64_R3_CMTEB);
    *(PULONG64)Entry = 0xff40f3fd50003c00ULL;

    /* Setup TSS entry */
    Entry = FUNC0(GdtBase, KGDT64_SYS_TSS);
    FUNC1(Entry, TssBase, sizeof(KTSS), I386_TSS, 0);

    /* Setup GDT descriptor */
    GdtDesc.Base  = GdtBase;
    GdtDesc.Limit = NUM_GDT * sizeof(KGDTENTRY) - 1;

    /* Set the new Gdt */
    FUNC3(&GdtDesc.Limit);
    FUNC2("Leave Amd64SetupGdt()\n");
}