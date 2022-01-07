
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {struct module* lmodules; } ;
struct TYPE_2__ {scalar_t__ BaseOfImage; scalar_t__ ImageSize; } ;
struct module {int type; TYPE_1__ module; struct module* next; } ;
typedef enum module_type { ____Placeholder_module_type } module_type ;
typedef scalar_t__ DWORD64 ;


 int DMT_ELF ;
 int DMT_MACHO ;
 int DMT_PE ;
 int DMT_UNKNOWN ;
 int ERROR_MOD_NOT_FOUND ;
 int SetLastError (int ) ;

struct module* module_find_by_addr(const struct process* pcs, DWORD64 addr,
                                   enum module_type type)
{
    struct module* module;

    if (type == DMT_UNKNOWN)
    {
        if ((module = module_find_by_addr(pcs, addr, DMT_PE)) ||
            (module = module_find_by_addr(pcs, addr, DMT_ELF)) ||
            (module = module_find_by_addr(pcs, addr, DMT_MACHO)))
            return module;
    }
    else
    {
        for (module = pcs->lmodules; module; module = module->next)
        {
            if (type == module->type && addr >= module->module.BaseOfImage &&
                addr < module->module.BaseOfImage + module->module.ImageSize)
                return module;
        }
    }
    SetLastError(ERROR_MOD_NOT_FOUND);
    return module;
}
