
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_info {int dummy; } ;
typedef int WCHAR ;
typedef int HANDLE ;
typedef int BOOL ;


 int CP_UNIXCP ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,int *) ;
 unsigned int MultiByteToWideChar (int ,int ,char const*,int,int *,unsigned int) ;
 int const* S_SlashW ;
 int elf_load_file (int ,int *,unsigned long,unsigned long,struct elf_info*) ;
 unsigned int lstrlenW (int const*) ;
 int strcatW (int *,int const*) ;
 char* wine_dll_enum_load_path (int ) ;

__attribute__((used)) static BOOL elf_load_file_from_dll_path(HANDLE hProcess,
                                        const WCHAR* filename,
                                        unsigned long load_offset,
                                        unsigned long dyn_addr,
                                        struct elf_info* elf_info)
{
    BOOL ret = FALSE;
    unsigned int index = 0;
    const char *path;

    while (!ret && (path = wine_dll_enum_load_path( index++ )))
    {
        WCHAR *name;
        unsigned len;

        len = MultiByteToWideChar(CP_UNIXCP, 0, path, -1, ((void*)0), 0);

        name = HeapAlloc( GetProcessHeap(), 0,
                          (len + lstrlenW(filename) + 2) * sizeof(WCHAR) );

        if (!name) break;
        MultiByteToWideChar(CP_UNIXCP, 0, path, -1, name, len);
        strcatW( name, S_SlashW );
        strcatW( name, filename );
        ret = elf_load_file(hProcess, name, load_offset, dyn_addr, elf_info);
        HeapFree( GetProcessHeap(), 0, name );
    }
    return ret;
}
