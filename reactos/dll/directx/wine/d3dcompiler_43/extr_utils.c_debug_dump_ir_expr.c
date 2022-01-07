
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_expr {scalar_t__* operands; } ;


 int TRACE (char*,...) ;
 int debug_dump_instr (scalar_t__) ;
 int debug_expr_op (struct hlsl_ir_expr const*) ;

__attribute__((used)) static void debug_dump_ir_expr(const struct hlsl_ir_expr *expr)
{
    unsigned int i;

    TRACE("%s (", debug_expr_op(expr));
    for (i = 0; i < 3 && expr->operands[i]; ++i)
    {
        debug_dump_instr(expr->operands[i]);
        TRACE(" ");
    }
    TRACE(")");
}
