#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sym_enum {int dummy; } ;
struct module_pair {TYPE_2__* pcs; TYPE_5__* requested; } ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  ULONG64 ;
struct TYPE_8__ {int /*<<< orphan*/  ModuleName; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ module; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_5__* lmodules; } ;
typedef  scalar_t__ const* PCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ DMT_ELF ; 
 scalar_t__ DMT_MACHO ; 
 scalar_t__ DMT_PE ; 
 int /*<<< orphan*/  DMT_UNKNOWN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int SYMOPT_WINE_WITH_NATIVE_MODULES ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int dbghelp_options ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__ const*,int) ; 
 TYPE_5__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC7 (struct module_pair*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ const* starW ; 
 scalar_t__* FUNC9 (scalar_t__ const*,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__ const*,struct sym_enum const*) ; 
 scalar_t__ FUNC11 (struct module_pair*,scalar_t__ const*,struct sym_enum const*) ; 

__attribute__((used)) static BOOL FUNC12(HANDLE hProcess, ULONG64 BaseOfDll, PCWSTR Mask,
                     const struct sym_enum* se)
{
    struct module_pair  pair;
    const WCHAR*        bang;
    WCHAR*              mod;

    pair.pcs = FUNC8(hProcess);
    if (!pair.pcs) return FALSE;
    if (BaseOfDll == 0)
    {
        /* do local variables ? */
        if (!Mask || !(bang = FUNC9(Mask, '!')))
            return FUNC10(pair.pcs, Mask, se);

        if (bang == Mask) return FALSE;

        mod = FUNC1(FUNC0(), 0, (bang - Mask + 1) * sizeof(WCHAR));
        if (!mod) return FALSE;
        FUNC4(mod, Mask, (bang - Mask) * sizeof(WCHAR));
        mod[bang - Mask] = 0;

        for (pair.requested = pair.pcs->lmodules; pair.requested; pair.requested = pair.requested->next)
        {
            if (pair.requested->type == DMT_PE && FUNC7(&pair))
            {
                if (FUNC3(pair.requested->module.ModuleName, mod, FALSE) &&
                    FUNC11(&pair, bang + 1, se))
                    break;
            }
        }
        /* not found in PE modules, retry on the ELF ones
         */
        if (!pair.requested && (dbghelp_options & SYMOPT_WINE_WITH_NATIVE_MODULES))
        {
            for (pair.requested = pair.pcs->lmodules; pair.requested; pair.requested = pair.requested->next)
            {
                if ((pair.requested->type == DMT_ELF || pair.requested->type == DMT_MACHO) &&
                    !FUNC6(pair.pcs, pair.requested) &&
                    FUNC7(&pair))
                {
                    if (FUNC3(pair.requested->module.ModuleName, mod, FALSE) &&
                        FUNC11(&pair, bang + 1, se))
                    break;
                }
            }
        }
        FUNC2(FUNC0(), 0, mod);
        return TRUE;
    }
    pair.requested = FUNC5(pair.pcs, BaseOfDll, DMT_UNKNOWN);
    if (!FUNC7(&pair))
        return FALSE;

    /* we always ignore module name from Mask when BaseOfDll is defined */
    if (Mask && (bang = FUNC9(Mask, '!')))
    {
        if (bang == Mask) return FALSE;
        Mask = bang + 1;
    }

    FUNC11(&pair, Mask ? Mask : starW, se);

    return TRUE;
}