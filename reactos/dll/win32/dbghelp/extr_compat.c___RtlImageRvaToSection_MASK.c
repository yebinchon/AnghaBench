#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  NumberOfSections; } ;
struct TYPE_10__ {TYPE_1__ FileHeader; } ;
struct TYPE_9__ {int /*<<< orphan*/  SizeOfRawData; int /*<<< orphan*/  VirtualAddress; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef  TYPE_3__ IMAGE_NT_HEADERS ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

PIMAGE_SECTION_HEADER
FUNC3(
    const IMAGE_NT_HEADERS* NtHeader,
    PVOID BaseAddress,
    ULONG Rva)
{
    PIMAGE_SECTION_HEADER Section;
    ULONG Va;
    ULONG Count;

    Count = FUNC2(NtHeader->FileHeader.NumberOfSections);
    Section = FUNC0(NtHeader);

    while (Count--)
    {
        Va = FUNC1(Section->VirtualAddress);
        if ((Va <= Rva) && (Rva < Va + FUNC1(Section->SizeOfRawData)))
            return Section;
        Section++;
    }

    return NULL;
}