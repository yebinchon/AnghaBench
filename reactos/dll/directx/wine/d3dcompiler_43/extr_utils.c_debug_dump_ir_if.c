
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_if {scalar_t__ else_instrs; scalar_t__ then_instrs; int condition; } ;


 int TRACE (char*) ;
 int debug_dump_instr (int ) ;
 int debug_dump_instr_list (scalar_t__) ;

__attribute__((used)) static void debug_dump_ir_if(const struct hlsl_ir_if *if_node)
{
    TRACE("if (");
    debug_dump_instr(if_node->condition);
    TRACE(")\n{\n");
    debug_dump_instr_list(if_node->then_instrs);
    TRACE("}\n");
    if (if_node->else_instrs)
    {
        TRACE("else\n{\n");
        debug_dump_instr_list(if_node->else_instrs);
        TRACE("}\n");
    }
}
