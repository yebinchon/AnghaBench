
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pool {int dummy; } ;
struct TYPE_8__ {int ModuleName; int SymType; } ;
struct module {TYPE_4__ module; int reloc_delta; TYPE_3__** format_info; } ;
struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
struct hash_table {int dummy; } ;
struct elf_thunk_area {char* member_0; int member_1; int member_3; int member_2; } ;
struct TYPE_6__ {TYPE_1__* elf_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_5__ {int elf_addr; } ;
typedef int BOOL ;


 size_t DFI_ELF ;
 int FALSE ;
 char const* IMAGE_NO_MAP ;
 int SHT_NULL ;
 int SYMOPT_PUBLICS_ONLY ;
 int S_ElfW ;
 int S_WineLoaderW ;
 int SymExport ;
 int THUNK_ORDINAL_LOAD ;
 int THUNK_ORDINAL_NOTYPE ;
 int TRUE ;
 int WARN (char*) ;
 int dbghelp_options ;
 int dwarf2_parse (struct module*,int ,struct elf_thunk_area*,struct image_file_map*) ;
 int elf_check_alternate (struct image_file_map*,struct module*) ;
 scalar_t__ elf_find_section (struct image_file_map*,char*,int ,struct image_section_map*) ;
 int elf_finish_stabs_info (struct module*,struct hash_table*) ;
 int elf_hash_symtab (struct module*,struct pool*,struct hash_table*,struct image_file_map*,struct elf_thunk_area*) ;
 scalar_t__ elf_new_public_symbols (struct module*,struct hash_table*) ;
 int elf_new_wine_thunks (struct module*,struct hash_table*,struct elf_thunk_area*) ;
 int image_get_map_size (struct image_section_map*) ;
 char* image_map_section (struct image_section_map*) ;
 int image_unmap_section (struct image_section_map*) ;
 int stabs_parse (struct module*,int ,char const*,int ,char const*,int ,int *,int *) ;
 int strcmpW (int ,int ) ;
 scalar_t__ strstrW (int ,int ) ;

__attribute__((used)) static BOOL elf_load_debug_info_from_map(struct module* module,
                                         struct image_file_map* fmap,
                                         struct pool* pool,
                                         struct hash_table* ht_symtab)
{
    BOOL ret = FALSE, lret;
    struct elf_thunk_area thunks[] =
    {
        {"__wine_spec_import_thunks", THUNK_ORDINAL_NOTYPE, 0, 0},
        {"__wine_spec_delayed_import_loaders", THUNK_ORDINAL_LOAD, 0, 0},
        {"__wine_spec_delayed_import_thunks", THUNK_ORDINAL_LOAD, 0, 0},
        {"__wine_delay_load", THUNK_ORDINAL_LOAD, 0, 0},
        {"__wine_spec_thunk_text_16", -16, 0, 0},
        {"__wine_spec_thunk_text_32", -32, 0, 0},
        {((void*)0), 0, 0, 0}
    };

    module->module.SymType = SymExport;


    elf_hash_symtab(module, pool, ht_symtab, fmap, thunks);

    if (!(dbghelp_options & SYMOPT_PUBLICS_ONLY))
    {
        struct image_section_map stab_sect, stabstr_sect;


        ret = elf_check_alternate(fmap, module);

        if (elf_find_section(fmap, ".stab", SHT_NULL, &stab_sect) &&
            elf_find_section(fmap, ".stabstr", SHT_NULL, &stabstr_sect))
        {
            const char* stab;
            const char* stabstr;

            stab = image_map_section(&stab_sect);
            stabstr = image_map_section(&stabstr_sect);
            if (stab != IMAGE_NO_MAP && stabstr != IMAGE_NO_MAP)
            {

                lret = stabs_parse(module, module->format_info[DFI_ELF]->u.elf_info->elf_addr,
                                   stab, image_get_map_size(&stab_sect),
                                   stabstr, image_get_map_size(&stabstr_sect),
                                   ((void*)0), ((void*)0));
                if (lret)

                    elf_finish_stabs_info(module, ht_symtab);
                else
                    WARN("Couldn't correctly read stabs\n");
                ret = ret || lret;
            }
            image_unmap_section(&stab_sect);
            image_unmap_section(&stabstr_sect);
        }
        lret = dwarf2_parse(module, module->reloc_delta, thunks, fmap);
        ret = ret || lret;
    }
    if (strstrW(module->module.ModuleName, S_ElfW) ||
        !strcmpW(module->module.ModuleName, S_WineLoaderW))
    {

        if (!(dbghelp_options & SYMOPT_PUBLICS_ONLY))
            elf_new_wine_thunks(module, ht_symtab, thunks);
    }

    if (elf_new_public_symbols(module, ht_symtab) && !ret) ret = TRUE;

    return ret;
}
