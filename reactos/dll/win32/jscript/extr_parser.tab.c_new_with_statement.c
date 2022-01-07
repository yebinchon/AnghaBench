
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stat; int * statement; int * expr; } ;
typedef TYPE_1__ with_statement_t ;
typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;


 int STAT_WITH ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_with_statement(parser_ctx_t *ctx, expression_t *expr, statement_t *statement)
{
    with_statement_t *ret;

    ret = new_statement(ctx, STAT_WITH, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->expr = expr;
    ret->statement = statement;

    return &ret->stat;
}
