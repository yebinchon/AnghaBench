
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stat; int * case_list; int * expr; } ;
typedef TYPE_1__ switch_statement_t ;
typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
typedef int case_clausule_t ;


 int STAT_SWITCH ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_switch_statement(parser_ctx_t *ctx, expression_t *expr, case_clausule_t *case_list)
{
    switch_statement_t *ret;

    ret = new_statement(ctx, STAT_SWITCH, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->expr = expr;
    ret->case_list = case_list;

    return &ret->stat;
}
