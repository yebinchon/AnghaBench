#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  VirtualAddress; int /*<<< orphan*/  PointerToRawData; int /*<<< orphan*/  SizeOfRawData; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PIMAGE_SECTION_HEADER ;
typedef  int /*<<< orphan*/  IMAGE_NT_HEADERS ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

PVOID
FUNC2
(const IMAGE_NT_HEADERS* NtHeader, 
 PVOID BaseAddress, 
 ULONG Rva,
 PIMAGE_SECTION_HEADER *SectionHeader)
{
    PIMAGE_SECTION_HEADER Section = NULL;

    if (SectionHeader)
        Section = *SectionHeader;

    if ((Section == NULL) ||
        (Rva < FUNC1(Section->VirtualAddress)) ||
        (Rva >= FUNC1(Section->VirtualAddress) + FUNC1(Section->SizeOfRawData)))
    {
        Section = FUNC0(NtHeader, BaseAddress, Rva);
        if (Section == NULL)
            return NULL;

        if (SectionHeader)
            *SectionHeader = Section;
    }

    return (PVOID)((ULONG_PTR)BaseAddress + Rva +
                   (ULONG_PTR)FUNC1(Section->PointerToRawData) -
                   (ULONG_PTR)FUNC1(Section->VirtualAddress));
}