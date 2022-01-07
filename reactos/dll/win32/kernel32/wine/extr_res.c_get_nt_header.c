
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ e_magic; int e_lfanew; } ;
struct TYPE_4__ {scalar_t__ Signature; } ;
typedef TYPE_1__ IMAGE_NT_HEADERS ;
typedef TYPE_2__ IMAGE_DOS_HEADER ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ IMAGE_DOS_SIGNATURE ;
 scalar_t__ IMAGE_NT_SIGNATURE ;

__attribute__((used)) static IMAGE_NT_HEADERS *get_nt_header( void *base, DWORD mapping_size )
{
    IMAGE_NT_HEADERS *nt;
    IMAGE_DOS_HEADER *dos;

    if (mapping_size<sizeof (*dos))
        return ((void*)0);

    dos = base;
    if (dos->e_magic != IMAGE_DOS_SIGNATURE)
        return ((void*)0);

    if ((dos->e_lfanew + sizeof (*nt)) > mapping_size)
        return ((void*)0);

    nt = (void*) ((BYTE*)base + dos->e_lfanew);

    if (nt->Signature != IMAGE_NT_SIGNATURE)
        return ((void*)0);

    return nt;
}
