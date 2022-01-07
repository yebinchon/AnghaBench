
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ e_magic; scalar_t__ e_lfanew; } ;
struct TYPE_4__ {scalar_t__ Signature; } ;
typedef TYPE_1__* PIMAGE_NT_HEADERS ;
typedef TYPE_2__* PIMAGE_DOS_HEADER ;
typedef scalar_t__ PCHAR ;


 scalar_t__ IMAGE_DOS_SIGNATURE ;
 scalar_t__ IMAGE_NT_SIGNATURE ;

PIMAGE_NT_HEADERS __RtlImageNtHeader(void *data)
{
    PIMAGE_DOS_HEADER DosHeader = (PIMAGE_DOS_HEADER)data;
    PIMAGE_NT_HEADERS NtHeaders;
    PCHAR NtHeaderPtr;
    if (DosHeader->e_magic != IMAGE_DOS_SIGNATURE)
        return ((void*)0);
    NtHeaderPtr = ((PCHAR)data) + DosHeader->e_lfanew;
    NtHeaders = (PIMAGE_NT_HEADERS)NtHeaderPtr;
    if (NtHeaders->Signature != IMAGE_NT_SIGNATURE)
        return ((void*)0);
    return NtHeaders;
}
