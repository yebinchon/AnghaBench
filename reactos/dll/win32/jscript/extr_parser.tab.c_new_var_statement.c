
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int head; } ;
typedef TYPE_1__ variable_list_t ;
struct TYPE_6__ {int stat; int variable_list; } ;
typedef TYPE_2__ var_statement_t ;
typedef int statement_t ;
typedef int parser_ctx_t ;


 int STAT_VAR ;
 TYPE_2__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_var_statement(parser_ctx_t *ctx, variable_list_t *variable_list)
{
    var_statement_t *ret;

    ret = new_statement(ctx, STAT_VAR, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->variable_list = variable_list->head;

    return &ret->stat;
}
