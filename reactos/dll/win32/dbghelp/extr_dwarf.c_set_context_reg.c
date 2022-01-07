
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct cpu_stack_walk {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {unsigned int (* map_dwarf_register ) (scalar_t__,int ) ;scalar_t__* (* fetch_context_reg ) (int *,unsigned int,unsigned int*) ;} ;
typedef int CONTEXT ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,scalar_t__,unsigned int,unsigned int) ;
 int TRUE ;
 int WARN (char*,void*) ;
 TYPE_1__* dbghelp_current_cpu ;
 int memcpy (scalar_t__*,char*,unsigned int) ;
 unsigned int stub1 (scalar_t__,int ) ;
 scalar_t__* stub2 (int *,unsigned int,unsigned int*) ;
 int sw_read_mem (struct cpu_stack_walk*,scalar_t__,char*,unsigned int) ;

__attribute__((used)) static void set_context_reg(struct cpu_stack_walk* csw, CONTEXT *context, ULONG_PTR dw_reg,
                            ULONG_PTR val, BOOL isdebuggee)
{
    unsigned regno = dbghelp_current_cpu->map_dwarf_register(dw_reg, TRUE), sz;
    ULONG_PTR* ptr = dbghelp_current_cpu->fetch_context_reg(context, regno, &sz);

    if (isdebuggee)
    {
        char tmp[16];

        if (sz > sizeof(tmp))
        {
            FIXME("register %lu/%u size is too wide: %u\n", dw_reg, regno, sz);
            return;
        }
        if (!sw_read_mem(csw, val, tmp, sz))
        {
            WARN("Couldn't read memory at %p\n", (void*)val);
            return;
        }
        memcpy(ptr, tmp, sz);
    }
    else
    {
        if (sz != sizeof(ULONG_PTR))
        {
            FIXME("assigning to register %lu/%u of wrong size %u\n", dw_reg, regno, sz);
            return;
        }
        *ptr = val;
    }
}
