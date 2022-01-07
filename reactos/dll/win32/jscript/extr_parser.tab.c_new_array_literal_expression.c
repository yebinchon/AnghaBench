
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_5__ {int * head; } ;
typedef TYPE_1__ element_list_t ;
struct TYPE_6__ {int length; int expr; int * element_list; } ;
typedef TYPE_2__ array_literal_expression_t ;


 int EXPR_ARRAYLIT ;
 TYPE_2__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_array_literal_expression(parser_ctx_t *ctx, element_list_t *element_list, int length)
{
    array_literal_expression_t *ret = new_expression(ctx, EXPR_ARRAYLIT, sizeof(*ret));

    ret->element_list = element_list ? element_list->head : ((void*)0);
    ret->length = length;

    return &ret->expr;
}
