
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct process {int dummy; } ;
struct pdb_module_info {int used_subfiles; struct pdb_file_info* pdb_files; } ;
struct pdb_lookup {char const* filename; int age; int timestamp; int kind; } ;
struct pdb_file_info {int dummy; } ;
struct msc_debug_info {int dummy; } ;
struct TYPE_8__ {scalar_t__ allowed; } ;
struct TYPE_7__ {int pdbimport_size; int module_size; int offset_size; int hash_size; int srcmodule_size; } ;
struct TYPE_6__ {char const* filename; int TimeDateStamp; int Age; } ;
typedef TYPE_1__ PDB_SYMBOL_IMPORT ;
typedef TYPE_2__ PDB_SYMBOLS ;


 int CV_MAX_MODULES ;
 int FIXME (char*) ;
 int PDB_JG ;
 int TRACE (char*,char const*,int ,int ) ;
 scalar_t__ TRUE ;
 TYPE_4__* cv_current_module ;
 TYPE_4__* cv_zmodules ;
 int pdb_process_internal (struct process const*,struct msc_debug_info const*,struct pdb_lookup*,struct pdb_module_info*,int) ;
 int strcasecmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void pdb_process_symbol_imports(const struct process* pcs,
                                       const struct msc_debug_info* msc_dbg,
                                       const PDB_SYMBOLS* symbols,
                                       const void* symbols_image,
                                       const char* image,
                                       const struct pdb_lookup* pdb_lookup,
                                       struct pdb_module_info* pdb_module_info,
                                       unsigned module_index)
{
    if (module_index == -1 && symbols && symbols->pdbimport_size)
    {
        const PDB_SYMBOL_IMPORT*imp;
        const void* first;
        const void* last;
        const char* ptr;
        int i = 0;
        struct pdb_file_info sf0 = pdb_module_info->pdb_files[0];

        imp = (const PDB_SYMBOL_IMPORT*)((const char*)symbols_image + sizeof(PDB_SYMBOLS) +
                                         symbols->module_size + symbols->offset_size +
                                         symbols->hash_size + symbols->srcmodule_size);
        first = imp;
        last = (const char*)imp + symbols->pdbimport_size;
        while (imp < (const PDB_SYMBOL_IMPORT*)last)
        {
            ptr = (const char*)imp + sizeof(*imp) + strlen(imp->filename);
            if (i >= CV_MAX_MODULES) FIXME("Out of bounds!!!\n");
            if (!strcasecmp(pdb_lookup->filename, imp->filename))
            {
                if (module_index != -1) FIXME("Twice the entry\n");
                else module_index = i;
                pdb_module_info->pdb_files[i] = sf0;
            }
            else
            {
                struct pdb_lookup imp_pdb_lookup;




                imp_pdb_lookup.filename = imp->filename;
                imp_pdb_lookup.kind = PDB_JG;
                imp_pdb_lookup.timestamp = imp->TimeDateStamp;
                imp_pdb_lookup.age = imp->Age;
                TRACE("got for %s: age=%u ts=%x\n",
                      imp->filename, imp->Age, imp->TimeDateStamp);
                pdb_process_internal(pcs, msc_dbg, &imp_pdb_lookup, pdb_module_info, i);
            }
            i++;
            imp = (const PDB_SYMBOL_IMPORT*)((const char*)first + ((ptr - (const char*)first + strlen(ptr) + 1 + 3) & ~3));
        }
        pdb_module_info->used_subfiles = i;
    }
    if (module_index == -1)
    {
        module_index = 0;
        pdb_module_info->used_subfiles = 1;
    }
    cv_current_module = &cv_zmodules[module_index];
    if (cv_current_module->allowed) FIXME("Already allowed??\n");
    cv_current_module->allowed = TRUE;
}
