
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {struct module* lmodules; } ;
struct TYPE_2__ {int ModuleName; } ;
struct module {TYPE_1__ module; struct module* next; } ;
typedef int WCHAR ;


 int ERROR_INVALID_NAME ;
 int SetLastError (int ) ;
 int strcmpiW (int const*,int ) ;

struct module* module_find_by_nameW(const struct process* pcs, const WCHAR* name)
{
    struct module* module;

    for (module = pcs->lmodules; module; module = module->next)
    {
        if (!strcmpiW(name, module->module.ModuleName)) return module;
    }
    SetLastError(ERROR_INVALID_NAME);
    return ((void*)0);
}
