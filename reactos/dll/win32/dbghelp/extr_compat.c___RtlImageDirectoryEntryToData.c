
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {int SizeOfHeaders; TYPE_1__* DataDirectory; int NumberOfRvaAndSizes; } ;
struct TYPE_8__ {TYPE_2__ OptionalHeader; } ;
struct TYPE_6__ {int Size; int VirtualAddress; } ;
typedef int * PVOID ;
typedef scalar_t__* PULONG ;
typedef TYPE_3__* PIMAGE_NT_HEADERS ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 TYPE_3__* RtlImageNtHeader (int *) ;
 int * RtlImageRvaToVa (TYPE_3__*,int *,scalar_t__,int *) ;
 scalar_t__ SWAPD (int ) ;

PVOID
__RtlImageDirectoryEntryToData(
    PVOID BaseAddress,
    BOOLEAN MappedAsImage,
    USHORT Directory,
    PULONG Size)
{
    PIMAGE_NT_HEADERS NtHeader;
    ULONG Va;


    if ((ULONG_PTR)BaseAddress & 1)
    {
        BaseAddress = (PVOID)((ULONG_PTR)BaseAddress & ~1);
        MappedAsImage = FALSE;
    }

    NtHeader = RtlImageNtHeader(BaseAddress);
    if (NtHeader == ((void*)0))
        return ((void*)0);

    if (Directory >= SWAPD(NtHeader->OptionalHeader.NumberOfRvaAndSizes))
        return ((void*)0);

    Va = SWAPD(NtHeader->OptionalHeader.DataDirectory[Directory].VirtualAddress);
    if (Va == 0)
        return ((void*)0);

    *Size = SWAPD(NtHeader->OptionalHeader.DataDirectory[Directory].Size);

    if (MappedAsImage || Va < SWAPD(NtHeader->OptionalHeader.SizeOfHeaders))
        return (PVOID)((ULONG_PTR)BaseAddress + Va);


    return RtlImageRvaToVa(NtHeader, BaseAddress, Va, ((void*)0));
}
