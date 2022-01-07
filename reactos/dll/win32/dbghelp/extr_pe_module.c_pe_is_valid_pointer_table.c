
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ NumberOfSymbols; scalar_t__ PointerToSymbolTable; } ;
struct TYPE_5__ {TYPE_1__ FileHeader; } ;
typedef int IMAGE_SYMBOL ;
typedef TYPE_2__ IMAGE_NT_HEADERS ;
typedef int DWORD64 ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static BOOL pe_is_valid_pointer_table(const IMAGE_NT_HEADERS* nthdr, const void* mapping, DWORD64 sz)
{
    DWORD64 offset;


    offset = (DWORD64)nthdr->FileHeader.PointerToSymbolTable;
    offset += (DWORD64)nthdr->FileHeader.NumberOfSymbols * sizeof(IMAGE_SYMBOL);
    if (offset + sizeof(DWORD) > sz) return FALSE;

    offset += *(DWORD*)((const char*)mapping + offset);
    return offset <= sz;
}
