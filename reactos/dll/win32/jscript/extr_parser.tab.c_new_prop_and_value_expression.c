
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int expr; int * property_list; } ;
typedef TYPE_1__ property_value_expression_t ;
struct TYPE_6__ {int * head; } ;
typedef TYPE_2__ property_list_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;


 int EXPR_PROPVAL ;
 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_prop_and_value_expression(parser_ctx_t *ctx, property_list_t *property_list)
{
    property_value_expression_t *ret = new_expression(ctx, EXPR_PROPVAL, sizeof(*ret));

    ret->property_list = property_list ? property_list->head : ((void*)0);

    return &ret->expr;
}
