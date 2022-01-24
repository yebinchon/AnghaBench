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
typedef  int /*<<< orphan*/  tmp ;
struct cpu_stack_walk {int dummy; } ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_2__ {unsigned int (* map_dwarf_register ) (scalar_t__,int /*<<< orphan*/ ) ;scalar_t__* (* fetch_context_reg ) (int /*<<< orphan*/ *,unsigned int,unsigned int*) ;} ;
typedef  int /*<<< orphan*/  CONTEXT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 TYPE_1__* dbghelp_current_cpu ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,unsigned int) ; 
 unsigned int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpu_stack_walk*,scalar_t__,char*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct cpu_stack_walk* csw, CONTEXT *context, ULONG_PTR dw_reg,
                            ULONG_PTR val, BOOL isdebuggee)
{
    unsigned regno = dbghelp_current_cpu->map_dwarf_register(dw_reg, TRUE), sz;
    ULONG_PTR* ptr = dbghelp_current_cpu->fetch_context_reg(context, regno, &sz);

    if (isdebuggee)
    {
        char    tmp[16];

        if (sz > sizeof(tmp))
        {
            FUNC0("register %lu/%u size is too wide: %u\n", dw_reg, regno, sz);
            return;
        }
        if (!FUNC5(csw, val, tmp, sz))
        {
            FUNC1("Couldn't read memory at %p\n", (void*)val);
            return;
        }
        FUNC2(ptr, tmp, sz);
    }
    else
    {
        if (sz != sizeof(ULONG_PTR))
        {
            FUNC0("assigning to register %lu/%u of wrong size %u\n", dw_reg, regno, sz);
            return;
        }
        *ptr = val;
    }
}