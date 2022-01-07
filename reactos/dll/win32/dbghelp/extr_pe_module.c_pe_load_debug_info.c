
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int dummy; } ;
struct module {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int SYMOPT_PUBLICS_ONLY ;
 int TRUE ;
 int dbghelp_options ;
 scalar_t__ pe_load_coff_symbol_table (struct module*) ;
 scalar_t__ pe_load_dwarf (struct module*) ;
 scalar_t__ pe_load_export_debug_info (struct process const*,struct module*) ;
 scalar_t__ pe_load_msc_debug_info (struct process const*,struct module*) ;
 scalar_t__ pe_load_rsym (struct module*) ;
 int pe_load_stabs (struct process const*,struct module*) ;

BOOL pe_load_debug_info(const struct process* pcs, struct module* module)
{
    BOOL ret = FALSE;

    if (!(dbghelp_options & SYMOPT_PUBLICS_ONLY))
    {
        ret = pe_load_stabs(pcs, module);
        ret = pe_load_dwarf(module) || ret;

        ret = pe_load_msc_debug_info(pcs, module) || ret;
        ret = pe_load_rsym(module) || ret;


        ret = ret || pe_load_coff_symbol_table(module);




    }

    if (pe_load_export_debug_info(pcs, module) && !ret)
        ret = TRUE;

    return ret;
}
