#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pool {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ModuleName; int /*<<< orphan*/  SymType; } ;
struct module {TYPE_4__ module; int /*<<< orphan*/  reloc_delta; TYPE_3__** format_info; } ;
struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
struct hash_table {int dummy; } ;
struct elf_thunk_area {char* member_0; int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; } ;
struct TYPE_6__ {TYPE_1__* elf_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/  elf_addr; } ;
typedef  int BOOL ;

/* Variables and functions */
 size_t DFI_ELF ; 
 int FALSE ; 
 char const* IMAGE_NO_MAP ; 
 int /*<<< orphan*/  SHT_NULL ; 
 int SYMOPT_PUBLICS_ONLY ; 
 int /*<<< orphan*/  S_ElfW ; 
 int /*<<< orphan*/  S_WineLoaderW ; 
 int /*<<< orphan*/  SymExport ; 
 int THUNK_ORDINAL_LOAD ; 
 int THUNK_ORDINAL_NOTYPE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int dbghelp_options ; 
 int FUNC1 (struct module*,int /*<<< orphan*/ ,struct elf_thunk_area*,struct image_file_map*) ; 
 int FUNC2 (struct image_file_map*,struct module*) ; 
 scalar_t__ FUNC3 (struct image_file_map*,char*,int /*<<< orphan*/ ,struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct module*,struct hash_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct module*,struct pool*,struct hash_table*,struct image_file_map*,struct elf_thunk_area*) ; 
 scalar_t__ FUNC6 (struct module*,struct hash_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct module*,struct hash_table*,struct elf_thunk_area*) ; 
 int /*<<< orphan*/  FUNC8 (struct image_section_map*) ; 
 char* FUNC9 (struct image_section_map*) ; 
 int /*<<< orphan*/  FUNC10 (struct image_section_map*) ; 
 int FUNC11 (struct module*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC14(struct module* module,
                                         struct image_file_map* fmap,
                                         struct pool* pool,
                                         struct hash_table* ht_symtab)
{
    BOOL                ret = FALSE, lret;
    struct elf_thunk_area thunks[] = 
    {
        {"__wine_spec_import_thunks",           THUNK_ORDINAL_NOTYPE, 0, 0},    /* inter DLL calls */
        {"__wine_spec_delayed_import_loaders",  THUNK_ORDINAL_LOAD,   0, 0},    /* delayed inter DLL calls */
        {"__wine_spec_delayed_import_thunks",   THUNK_ORDINAL_LOAD,   0, 0},    /* delayed inter DLL calls */
        {"__wine_delay_load",                   THUNK_ORDINAL_LOAD,   0, 0},    /* delayed inter DLL calls */
        {"__wine_spec_thunk_text_16",           -16,                  0, 0},    /* 16 => 32 thunks */
        {"__wine_spec_thunk_text_32",           -32,                  0, 0},    /* 32 => 16 thunks */
        {NULL,                                  0,                    0, 0}
    };

    module->module.SymType = SymExport;

    /* create a hash table for the symtab */
    FUNC5(module, pool, ht_symtab, fmap, thunks);

    if (!(dbghelp_options & SYMOPT_PUBLICS_ONLY))
    {
        struct image_section_map stab_sect, stabstr_sect;

        /* check if we need an alternate file (from debuglink or build-id) */
        ret = FUNC2(fmap, module);

        if (FUNC3(fmap, ".stab", SHT_NULL, &stab_sect) &&
            FUNC3(fmap, ".stabstr", SHT_NULL, &stabstr_sect))
        {
            const char* stab;
            const char* stabstr;

            stab = FUNC9(&stab_sect);
            stabstr = FUNC9(&stabstr_sect);
            if (stab != IMAGE_NO_MAP && stabstr != IMAGE_NO_MAP)
            {
                /* OK, now just parse all of the stabs. */
                lret = FUNC11(module, module->format_info[DFI_ELF]->u.elf_info->elf_addr,
                                   stab, FUNC8(&stab_sect),
                                   stabstr, FUNC8(&stabstr_sect),
                                   NULL, NULL);
                if (lret)
                    /* and fill in the missing information for stabs */
                    FUNC4(module, ht_symtab);
                else
                    FUNC0("Couldn't correctly read stabs\n");
                ret = ret || lret;
            }
            FUNC10(&stab_sect);
            FUNC10(&stabstr_sect);
        }
        lret = FUNC1(module, module->reloc_delta, thunks, fmap);
        ret = ret || lret;
    }
    if (FUNC13(module->module.ModuleName, S_ElfW) ||
        !FUNC12(module->module.ModuleName, S_WineLoaderW))
    {
        /* add the thunks for native libraries */
        if (!(dbghelp_options & SYMOPT_PUBLICS_ONLY))
            FUNC7(module, ht_symtab, thunks);
    }
    /* add all the public symbols from symtab */
    if (FUNC6(module, ht_symtab) && !ret) ret = TRUE;

    return ret;
}