
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dos ;
struct TYPE_5__ {scalar_t__ e_magic; scalar_t__ Signature; scalar_t__ e_lfanew; } ;
typedef TYPE_1__ IMAGE_NT_HEADERS ;
typedef TYPE_1__ IMAGE_DOS_HEADER ;
typedef int HANDLE ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD64 ;
typedef int BOOL ;


 scalar_t__ IMAGE_DOS_SIGNATURE ;
 scalar_t__ IMAGE_NT_SIGNATURE ;
 scalar_t__ ReadProcessMemory (int ,char*,TYPE_1__*,int,int *) ;

BOOL pe_load_nt_header(HANDLE hProc, DWORD64 base, IMAGE_NT_HEADERS* nth)
{
    IMAGE_DOS_HEADER dos;

    return ReadProcessMemory(hProc, (char*)(DWORD_PTR)base, &dos, sizeof(dos), ((void*)0)) &&
        dos.e_magic == IMAGE_DOS_SIGNATURE &&
        ReadProcessMemory(hProc, (char*)(DWORD_PTR)(base + dos.e_lfanew),
                          nth, sizeof(*nth), ((void*)0)) &&
        nth->Signature == IMAGE_NT_SIGNATURE;
}
