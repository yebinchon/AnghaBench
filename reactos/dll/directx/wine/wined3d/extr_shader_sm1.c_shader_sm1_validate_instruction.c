
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_instruction {scalar_t__ handler_idx; scalar_t__ flags; } ;


 int FIXME (char*,scalar_t__,int ) ;
 scalar_t__ WINED3DSIH_BREAKP ;
 scalar_t__ WINED3DSIH_IF ;
 int debug_d3dshaderinstructionhandler (scalar_t__) ;

__attribute__((used)) static void shader_sm1_validate_instruction(struct wined3d_shader_instruction *ins)
{
    if (ins->handler_idx == WINED3DSIH_BREAKP || ins->handler_idx == WINED3DSIH_IF)
    {
        if (ins->flags)
        {
            FIXME("Ignoring unexpected instruction flags %#x for %s.\n",
                    ins->flags, debug_d3dshaderinstructionhandler(ins->handler_idx));
            ins->flags = 0;
        }
    }
}
