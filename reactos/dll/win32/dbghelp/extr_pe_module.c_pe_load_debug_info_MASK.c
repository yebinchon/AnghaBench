#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct process {int dummy; } ;
struct module {int dummy; } ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int SYMOPT_PUBLICS_ONLY ; 
 int TRUE ; 
 int dbghelp_options ; 
 scalar_t__ FUNC0 (struct module*) ; 
 scalar_t__ FUNC1 (struct module*) ; 
 scalar_t__ FUNC2 (struct process const*,struct module*) ; 
 scalar_t__ FUNC3 (struct process const*,struct module*) ; 
 scalar_t__ FUNC4 (struct module*) ; 
 int FUNC5 (struct process const*,struct module*) ; 

BOOL FUNC6(const struct process* pcs, struct module* module)
{
    BOOL                ret = FALSE;

    if (!(dbghelp_options & SYMOPT_PUBLICS_ONLY))
    {
        ret = FUNC5(pcs, module);
        ret = FUNC1(module) || ret;
        #ifndef DBGHELP_STATIC_LIB
        ret = FUNC3(pcs, module) || ret;
        ret = FUNC4(module) || ret;
        #endif

        ret = ret || FUNC0(module); /* FIXME */
        /* if we still have no debug info (we could only get SymExport at this
         * point), then do the SymExport except if we have an ELF container,
         * in which case we'll rely on the export's on the ELF side
         */
    }
    /* FIXME shouldn't we check that? if (!module_get_debug(pcs, module)) */
    if (FUNC2(pcs, module) && !ret)
        ret = TRUE;

    return ret;
}