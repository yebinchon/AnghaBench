
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum parse_assign_op { ____Placeholder_parse_assign_op } parse_assign_op ;
typedef enum hlsl_ir_expr_op { ____Placeholder_hlsl_ir_expr_op } hlsl_ir_expr_op ;
__attribute__((used)) static enum hlsl_ir_expr_op op_from_assignment(enum parse_assign_op op)
{
    static const enum hlsl_ir_expr_op ops[] =
    {
        0,
        137,
        128,
        130,
        133,
        131,
        132,
        129,
        136,
        135,
        134,
    };

    return ops[op];
}
