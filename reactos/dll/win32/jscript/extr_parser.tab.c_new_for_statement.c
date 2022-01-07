
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * head; } ;
typedef TYPE_1__ variable_list_t ;
typedef int statement_t ;
typedef int parser_ctx_t ;
struct TYPE_6__ {int stat; int * statement; int * end_expr; int * expr; int * begin_expr; int * variable_list; } ;
typedef TYPE_2__ for_statement_t ;
typedef int expression_t ;


 int STAT_FOR ;
 TYPE_2__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_for_statement(parser_ctx_t *ctx, variable_list_t *variable_list, expression_t *begin_expr,
        expression_t *expr, expression_t *end_expr, statement_t *statement)
{
    for_statement_t *ret;

    ret = new_statement(ctx, STAT_FOR, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->variable_list = variable_list ? variable_list->head : ((void*)0);
    ret->begin_expr = begin_expr;
    ret->expr = expr;
    ret->end_expr = end_expr;
    ret->statement = statement;

    return &ret->stat;
}
