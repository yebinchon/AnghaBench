
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* map_dwarf_register ) (int,int ) ;} ;


 int FALSE ;
 int FIXME (char*,int) ;
 int Wine_DW_no_register ;
 TYPE_1__* dbghelp_current_cpu ;
 int stub1 (int,int ) ;

__attribute__((used)) static unsigned dwarf2_map_register(int regno)
{
    if (regno == Wine_DW_no_register)
    {
        FIXME("What the heck map reg 0x%x\n",regno);
        return 0;
    }
    return dbghelp_current_cpu->map_dwarf_register(regno, FALSE);
}
