
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_node {int type; } ;
 int TRACE (char*,int ) ;
 int assignment_from_node (struct hlsl_ir_node const*) ;
 int constant_from_node (struct hlsl_ir_node const*) ;
 int constructor_from_node (struct hlsl_ir_node const*) ;
 int debug_dump_ir_assignment (int ) ;
 int debug_dump_ir_constant (int ) ;
 int debug_dump_ir_constructor (int ) ;
 int debug_dump_ir_deref (int ) ;
 int debug_dump_ir_expr (int ) ;
 int debug_dump_ir_if (int ) ;
 int debug_dump_ir_jump (int ) ;
 int debug_dump_ir_swizzle (int ) ;
 int debug_node_type (int) ;
 int deref_from_node (struct hlsl_ir_node const*) ;
 int expr_from_node (struct hlsl_ir_node const*) ;
 int if_from_node (struct hlsl_ir_node const*) ;
 int jump_from_node (struct hlsl_ir_node const*) ;
 int swizzle_from_node (struct hlsl_ir_node const*) ;

__attribute__((used)) static void debug_dump_instr(const struct hlsl_ir_node *instr)
{
    switch (instr->type)
    {
        case 131:
            debug_dump_ir_expr(expr_from_node(instr));
            break;
        case 132:
            debug_dump_ir_deref(deref_from_node(instr));
            break;
        case 134:
            debug_dump_ir_constant(constant_from_node(instr));
            break;
        case 135:
            debug_dump_ir_assignment(assignment_from_node(instr));
            break;
        case 128:
            debug_dump_ir_swizzle(swizzle_from_node(instr));
            break;
        case 133:
            debug_dump_ir_constructor(constructor_from_node(instr));
            break;
        case 129:
            debug_dump_ir_jump(jump_from_node(instr));
            break;
        case 130:
            debug_dump_ir_if(if_from_node(instr));
            break;
        default:
            TRACE("<No dump function for %s>", debug_node_type(instr->type));
    }
}
