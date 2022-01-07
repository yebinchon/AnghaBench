
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_if {int else_instrs; int then_instrs; int condition; } ;


 int d3dcompiler_free (struct hlsl_ir_if*) ;
 int free_instr (int ) ;
 int free_instr_list (int ) ;

__attribute__((used)) static void free_ir_if(struct hlsl_ir_if *if_node)
{
    free_instr(if_node->condition);
    free_instr_list(if_node->then_instrs);
    free_instr_list(if_node->else_instrs);
    d3dcompiler_free(if_node);
}
