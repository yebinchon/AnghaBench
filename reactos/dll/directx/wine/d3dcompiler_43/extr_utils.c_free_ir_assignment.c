
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_assignment {int rhs; int lhs; } ;


 int d3dcompiler_free (struct hlsl_ir_assignment*) ;
 int free_instr (int ) ;

__attribute__((used)) static void free_ir_assignment(struct hlsl_ir_assignment *assignment)
{
    free_instr(assignment->lhs);
    free_instr(assignment->rhs);
    d3dcompiler_free(assignment);
}
