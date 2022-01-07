
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_node {int type; } ;


 int FIXME (char*,int ) ;
 int assignment_from_node (struct hlsl_ir_node*) ;
 int constant_from_node (struct hlsl_ir_node*) ;
 int constructor_from_node (struct hlsl_ir_node*) ;
 int debug_node_type (int) ;
 int deref_from_node (struct hlsl_ir_node*) ;
 int expr_from_node (struct hlsl_ir_node*) ;
 int free_ir_assignment (int ) ;
 int free_ir_constant (int ) ;
 int free_ir_constructor (int ) ;
 int free_ir_deref (int ) ;
 int free_ir_expr (int ) ;
 int free_ir_if (int ) ;
 int free_ir_jump (int ) ;
 int free_ir_swizzle (int ) ;
 int if_from_node (struct hlsl_ir_node*) ;
 int jump_from_node (struct hlsl_ir_node*) ;
 int swizzle_from_node (struct hlsl_ir_node*) ;

void free_instr(struct hlsl_ir_node *node)
{
    switch (node->type)
    {
        case 134:
            free_ir_constant(constant_from_node(node));
            break;
        case 132:
            free_ir_deref(deref_from_node(node));
            break;
        case 128:
            free_ir_swizzle(swizzle_from_node(node));
            break;
        case 133:
            free_ir_constructor(constructor_from_node(node));
            break;
        case 131:
            free_ir_expr(expr_from_node(node));
            break;
        case 135:
            free_ir_assignment(assignment_from_node(node));
            break;
        case 130:
            free_ir_if(if_from_node(node));
            break;
        case 129:
            free_ir_jump(jump_from_node(node));
            break;
        default:
            FIXME("Unsupported node type %s\n", debug_node_type(node->type));
    }
}
