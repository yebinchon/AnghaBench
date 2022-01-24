#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct process {struct module* lmodules; } ;
struct TYPE_2__ {scalar_t__ BaseOfImage; scalar_t__ ImageSize; int /*<<< orphan*/  const* LoadedImageName; } ;
struct module {scalar_t__ type; TYPE_1__ module; struct module* next; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ PCWSTR ;
typedef  scalar_t__ DWORD64 ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ DMT_ELF ; 
 scalar_t__ DMT_MACHO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_DotSoW ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,size_t) ; 

__attribute__((used)) static BOOL FUNC6(const struct process* pcs,
                                       const WCHAR* ImageName, DWORD64 base)
{
    size_t              len;
    struct module*      module;
    PCWSTR              filename, modname;

    if (!base) return FALSE;
    filename = FUNC2(ImageName, NULL);
    len = FUNC4(filename);

    for (module = pcs->lmodules; module; module = module->next)
    {
        if ((module->type == DMT_ELF || module->type == DMT_MACHO) &&
            base >= module->module.BaseOfImage &&
            base < module->module.BaseOfImage + module->module.ImageSize)
        {
            modname = FUNC2(module->module.LoadedImageName, NULL);
            if (!FUNC5(modname, filename, len) &&
                !FUNC3(modname + len, S_DotSoW, 3 * sizeof(WCHAR)))
            {
                return TRUE;
            }
        }
    }
    /* likely a native PE module */
    FUNC0("Couldn't find container for %s\n", FUNC1(ImageName));
    return FALSE;
}