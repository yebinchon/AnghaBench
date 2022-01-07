
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_location {int dummy; } ;
struct hlsl_type {int dummy; } ;
struct hlsl_ir_node {struct hlsl_type* data_type; } ;
struct hlsl_ir_expr {int dummy; } ;


 int HLSL_IR_UNOP_CAST ;
 struct hlsl_ir_expr* expr_from_node (struct hlsl_ir_node*) ;
 struct hlsl_ir_node* new_unary_expr (int ,struct hlsl_ir_node*,struct source_location) ;

struct hlsl_ir_expr *new_cast(struct hlsl_ir_node *node, struct hlsl_type *type,
        struct source_location *loc)
{
    struct hlsl_ir_node *cast;

    cast = new_unary_expr(HLSL_IR_UNOP_CAST, node, *loc);
    if (cast)
        cast->data_type = type;
    return expr_from_node(cast);
}
