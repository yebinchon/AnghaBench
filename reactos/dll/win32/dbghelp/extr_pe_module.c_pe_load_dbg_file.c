
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct process {int dummy; } ;
struct TYPE_3__ {int DbgUnmatched; } ;
struct module {TYPE_1__ module; } ;
struct TYPE_4__ {int NumberOfSections; int ExportedNamesSize; int DebugDirectorySize; } ;
typedef TYPE_2__ IMAGE_SEPARATE_DEBUG_HEADER ;
typedef int IMAGE_SECTION_HEADER ;
typedef int IMAGE_DEBUG_DIRECTORY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 int ERR (char*,int ,int ) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_MAP_READ ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int * MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int TRACE (char*,int ) ;
 int UnmapViewOfFile (int const*) ;
 int debugstr_a (char const*) ;
 scalar_t__ path_find_symbol_file (struct process const*,struct module*,char const*,int *,int ,int ,char*,int *) ;
 int pe_load_debug_directory (struct process const*,struct module*,int const*,int const*,int,int const*,int) ;

__attribute__((used)) static BOOL pe_load_dbg_file(const struct process* pcs, struct module* module,
                             const char* dbg_name, DWORD timestamp)
{
    char tmp[MAX_PATH];
    HANDLE hFile = INVALID_HANDLE_VALUE, hMap = 0;
    const BYTE* dbg_mapping = ((void*)0);
    BOOL ret = FALSE;

    TRACE("Processing DBG file %s\n", debugstr_a(dbg_name));

    if (path_find_symbol_file(pcs, module, dbg_name, ((void*)0), timestamp, 0, tmp, &module->module.DbgUnmatched) &&
        (hFile = CreateFileA(tmp, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                             OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0))) != INVALID_HANDLE_VALUE &&
        ((hMap = CreateFileMappingW(hFile, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0))) != 0) &&
        ((dbg_mapping = MapViewOfFile(hMap, FILE_MAP_READ, 0, 0, 0)) != ((void*)0)))
    {
        const IMAGE_SEPARATE_DEBUG_HEADER* hdr;
        const IMAGE_SECTION_HEADER* sectp;
        const IMAGE_DEBUG_DIRECTORY* dbg;

        hdr = (const IMAGE_SEPARATE_DEBUG_HEADER*)dbg_mapping;

        sectp = (const IMAGE_SECTION_HEADER*)(hdr + 1);

        dbg = (const IMAGE_DEBUG_DIRECTORY*)
            (dbg_mapping + sizeof(*hdr) +
             hdr->NumberOfSections * sizeof(IMAGE_SECTION_HEADER) +
             hdr->ExportedNamesSize);

        ret = pe_load_debug_directory(pcs, module, dbg_mapping, sectp,
                                      hdr->NumberOfSections, dbg,
                                      hdr->DebugDirectorySize / sizeof(*dbg));
    }
    else
        ERR("Couldn't find .DBG file %s (%s)\n", debugstr_a(dbg_name), debugstr_a(tmp));

    if (dbg_mapping) UnmapViewOfFile(dbg_mapping);
    if (hMap) CloseHandle(hMap);
    if (hFile != INVALID_HANDLE_VALUE) CloseHandle(hFile);
    return ret;
}
