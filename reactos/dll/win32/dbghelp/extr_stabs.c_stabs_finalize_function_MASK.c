#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct symt_function {unsigned long size; scalar_t__ address; } ;
struct module {int dummy; } ;
struct location {scalar_t__ offset; int /*<<< orphan*/  kind; } ;
struct TYPE_4__ {scalar_t__ Address; } ;
typedef  TYPE_1__ IMAGEHLP_LINE64 ;

/* Variables and functions */
 int /*<<< orphan*/  SymTagFuncDebugStart ; 
 int /*<<< orphan*/  loc_absolute ; 
 int /*<<< orphan*/  FUNC0 (struct module*,struct symt_function*,int /*<<< orphan*/ ,struct location*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct module*,struct symt_function*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct module*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct module*,struct symt_function*) ; 

__attribute__((used)) static void FUNC4(struct module* module, struct symt_function* func,
                                    unsigned long size)
{
    IMAGEHLP_LINE64     il;
    struct location     loc;

    if (!func) return;
    FUNC3(module, func);
    /* To define the debug-start of the function, we use the second line number.
     * Not 100% bullet proof, but better than nothing
     */
    if (FUNC1(module, func, func->address, &il) &&
        FUNC2(module, &il))
    {
        loc.kind = loc_absolute;
        loc.offset = il.Address - func->address;
        FUNC0(module, func, SymTagFuncDebugStart, 
                                &loc, NULL);
    }
    if (size) func->size = size;
}