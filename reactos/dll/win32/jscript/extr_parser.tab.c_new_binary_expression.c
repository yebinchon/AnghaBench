
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int expression_type_t ;
typedef int expression_t ;
struct TYPE_3__ {int expr; int * expression2; int * expression1; } ;
typedef TYPE_1__ binary_expression_t ;


 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_binary_expression(parser_ctx_t *ctx, expression_type_t type,
       expression_t *expression1, expression_t *expression2)
{
    binary_expression_t *ret = new_expression(ctx, type, sizeof(*ret));

    ret->expression1 = expression1;
    ret->expression2 = expression2;

    return &ret->expr;
}
