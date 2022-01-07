
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ VirtualAddress; scalar_t__ SizeOfRawData; scalar_t__ PointerToRawData; } ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_1__ IMAGE_SECTION_HEADER ;
typedef scalar_t__ DWORD ;


 TYPE_1__* section_from_rva (void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void *address_from_rva( void *base, DWORD mapping_size, DWORD rva, DWORD len )
{
    const IMAGE_SECTION_HEADER *sec;

    sec = section_from_rva( base, mapping_size, rva );
    if (!sec)
        return ((void*)0);

    if (rva + len <= (DWORD)sec->VirtualAddress + sec->SizeOfRawData)
        return (void*)((LPBYTE) base + (sec->PointerToRawData + rva - sec->VirtualAddress));

    return ((void*)0);
}
