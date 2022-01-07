
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_2__ {unsigned int (* map_dwarf_register ) (int ,int ) ;int * (* fetch_context_reg ) (int *,unsigned int,unsigned int*) ;} ;
typedef int CONTEXT ;


 int FIXME (char*,int ,unsigned int,unsigned int) ;
 int TRUE ;
 TYPE_1__* dbghelp_current_cpu ;
 unsigned int stub1 (int ,int ) ;
 int * stub2 (int *,unsigned int,unsigned int*) ;

__attribute__((used)) static ULONG_PTR get_context_reg(CONTEXT *context, ULONG_PTR dw_reg)
{
    unsigned regno = dbghelp_current_cpu->map_dwarf_register(dw_reg, TRUE), sz;
    ULONG_PTR* ptr = dbghelp_current_cpu->fetch_context_reg(context, regno, &sz);

    if (sz != sizeof(ULONG_PTR))
    {
        FIXME("reading register %lu/%u of wrong size %u\n", dw_reg, regno, sz);
        return 0;
    }
    return *ptr;
}
