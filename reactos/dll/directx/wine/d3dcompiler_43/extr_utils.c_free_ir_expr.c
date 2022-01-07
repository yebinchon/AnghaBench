
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_expr {int subexpressions; int * operands; } ;


 int d3dcompiler_free (struct hlsl_ir_expr*) ;
 int free_instr (int ) ;
 int free_instr_list (int ) ;

__attribute__((used)) static void free_ir_expr(struct hlsl_ir_expr *expr)
{
    unsigned int i;

    for (i = 0; i < 3; ++i)
    {
        if (!expr->operands[i])
            break;
        free_instr(expr->operands[i]);
    }
    free_instr_list(expr->subexpressions);
    d3dcompiler_free(expr);
}
