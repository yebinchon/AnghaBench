
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {int dummy; } ;
struct pdb_lookup {int kind; int filename; int age; int guid; int timestamp; } ;
struct TYPE_2__ {int PdbUnmatched; } ;
struct module {TYPE_1__ module; } ;
typedef int * HANDLE ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int * CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int * CreateFileMappingW (int *,int *,int ,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int * INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;


 int WARN (char*,int ) ;
 int path_find_symbol_file (struct process const*,struct module*,int ,int *,int ,int ,char*,int *) ;

__attribute__((used)) static HANDLE map_pdb_file(const struct process* pcs,
                           const struct pdb_lookup* lookup,
                           struct module* module)
{
    HANDLE hFile, hMap = ((void*)0);
    char dbg_file_path[MAX_PATH];
    BOOL ret = FALSE;

    switch (lookup->kind)
    {
    case 128:
        ret = path_find_symbol_file(pcs, module, lookup->filename, ((void*)0), lookup->timestamp,
                                    lookup->age, dbg_file_path, &module->module.PdbUnmatched);
        break;
    case 129:
        ret = path_find_symbol_file(pcs, module, lookup->filename, &lookup->guid, 0,
                                    lookup->age, dbg_file_path, &module->module.PdbUnmatched);
        break;
    }
    if (!ret)
    {
        WARN("\tCouldn't find %s\n", lookup->filename);
        return ((void*)0);
    }
    if ((hFile = CreateFileA(dbg_file_path, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                             OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0))) != INVALID_HANDLE_VALUE)
    {
        hMap = CreateFileMappingW(hFile, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
        CloseHandle(hFile);
    }
    return hMap;
}
