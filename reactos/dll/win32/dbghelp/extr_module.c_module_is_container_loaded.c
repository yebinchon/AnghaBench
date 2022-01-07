
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {struct module* lmodules; } ;
struct TYPE_2__ {scalar_t__ BaseOfImage; scalar_t__ ImageSize; int const* LoadedImageName; } ;
struct module {scalar_t__ type; TYPE_1__ module; struct module* next; } ;
typedef int WCHAR ;
typedef scalar_t__ PCWSTR ;
typedef scalar_t__ DWORD64 ;
typedef int BOOL ;


 scalar_t__ DMT_ELF ;
 scalar_t__ DMT_MACHO ;
 int FALSE ;
 int S_DotSoW ;
 int TRUE ;
 int WARN (char*,int ) ;
 int debugstr_w (int const*) ;
 scalar_t__ get_filename (int const*,int *) ;
 int memcmp (scalar_t__,int ,int) ;
 size_t strlenW (scalar_t__) ;
 int strncmpiW (scalar_t__,scalar_t__,size_t) ;

__attribute__((used)) static BOOL module_is_container_loaded(const struct process* pcs,
                                       const WCHAR* ImageName, DWORD64 base)
{
    size_t len;
    struct module* module;
    PCWSTR filename, modname;

    if (!base) return FALSE;
    filename = get_filename(ImageName, ((void*)0));
    len = strlenW(filename);

    for (module = pcs->lmodules; module; module = module->next)
    {
        if ((module->type == DMT_ELF || module->type == DMT_MACHO) &&
            base >= module->module.BaseOfImage &&
            base < module->module.BaseOfImage + module->module.ImageSize)
        {
            modname = get_filename(module->module.LoadedImageName, ((void*)0));
            if (!strncmpiW(modname, filename, len) &&
                !memcmp(modname + len, S_DotSoW, 3 * sizeof(WCHAR)))
            {
                return TRUE;
            }
        }
    }

    WARN("Couldn't find container for %s\n", debugstr_w(ImageName));
    return FALSE;
}
