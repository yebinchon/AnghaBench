
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct hlsl_ir_node {int dummy; } ;
typedef enum hlsl_ir_expr_op { ____Placeholder_hlsl_ir_expr_op } hlsl_ir_expr_op ;
struct TYPE_2__ {struct hlsl_ir_node node; } ;


 TYPE_1__* new_expr (int,struct hlsl_ir_node**,struct source_location*) ;

__attribute__((used)) static inline struct hlsl_ir_node *new_unary_expr(enum hlsl_ir_expr_op op,
        struct hlsl_ir_node *op1, struct source_location loc)
{
    struct hlsl_ir_node *operands[3] = {op1};
    return &new_expr(op, operands, &loc)->node;
}
