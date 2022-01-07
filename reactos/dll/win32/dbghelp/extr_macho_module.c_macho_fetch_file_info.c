
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;

BOOL macho_fetch_file_info(HANDLE process, const WCHAR* name, unsigned long load_addr, DWORD_PTR* base,
                           DWORD* size, DWORD* checksum)
{
    return FALSE;
}
