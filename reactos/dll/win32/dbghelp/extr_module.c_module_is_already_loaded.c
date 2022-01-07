
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {struct module* lmodules; } ;
struct TYPE_2__ {int const* LoadedImageName; } ;
struct module {TYPE_1__ module; struct module* next; } ;
typedef int const WCHAR ;


 int ERROR_INVALID_NAME ;
 int SetLastError (int ) ;
 int const* get_filename (int const*,int *) ;
 int strcmpiW (int const*,int const*) ;

struct module* module_is_already_loaded(const struct process* pcs, const WCHAR* name)
{
    struct module* module;
    const WCHAR* filename;


    for (module = pcs->lmodules; module; module = module->next)
    {
        if (!strcmpiW(name, module->module.LoadedImageName))
            return module;
    }

    filename = get_filename(name, ((void*)0));
    for (module = pcs->lmodules; module; module = module->next)
    {
        if (!strcmpiW(filename, get_filename(module->module.LoadedImageName, ((void*)0))))
            return module;
    }
    SetLastError(ERROR_INVALID_NAME);
    return ((void*)0);
}
