
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_4__ {int VirtualAddress; int PointerToRawData; int SizeOfRawData; } ;
typedef int * PVOID ;
typedef TYPE_1__* PIMAGE_SECTION_HEADER ;
typedef int IMAGE_NT_HEADERS ;


 TYPE_1__* RtlImageRvaToSection (int const*,int *,scalar_t__) ;
 scalar_t__ SWAPD (int ) ;

PVOID
__RtlImageRvaToVa
(const IMAGE_NT_HEADERS* NtHeader,
 PVOID BaseAddress,
 ULONG Rva,
 PIMAGE_SECTION_HEADER *SectionHeader)
{
    PIMAGE_SECTION_HEADER Section = ((void*)0);

    if (SectionHeader)
        Section = *SectionHeader;

    if ((Section == ((void*)0)) ||
        (Rva < SWAPD(Section->VirtualAddress)) ||
        (Rva >= SWAPD(Section->VirtualAddress) + SWAPD(Section->SizeOfRawData)))
    {
        Section = RtlImageRvaToSection(NtHeader, BaseAddress, Rva);
        if (Section == ((void*)0))
            return ((void*)0);

        if (SectionHeader)
            *SectionHeader = Section;
    }

    return (PVOID)((ULONG_PTR)BaseAddress + Rva +
                   (ULONG_PTR)SWAPD(Section->PointerToRawData) -
                   (ULONG_PTR)SWAPD(Section->VirtualAddress));
}
