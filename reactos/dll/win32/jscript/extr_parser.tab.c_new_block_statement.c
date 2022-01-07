
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int statement_t ;
struct TYPE_5__ {int * head; } ;
typedef TYPE_1__ statement_list_t ;
typedef int parser_ctx_t ;
struct TYPE_6__ {int stat; int * stat_list; } ;
typedef TYPE_2__ block_statement_t ;


 int STAT_BLOCK ;
 TYPE_2__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_block_statement(parser_ctx_t *ctx, statement_list_t *list)
{
    block_statement_t *ret;

    ret = new_statement(ctx, STAT_BLOCK, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->stat_list = list ? list->head : ((void*)0);

    return &ret->stat;
}
