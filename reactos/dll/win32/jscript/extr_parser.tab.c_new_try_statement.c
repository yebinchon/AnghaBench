
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stat; int * finally_statement; int * catch_block; int * try_statement; } ;
typedef TYPE_1__ try_statement_t ;
typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int catch_block_t ;


 int STAT_TRY ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_try_statement(parser_ctx_t *ctx, statement_t *try_statement,
       catch_block_t *catch_block, statement_t *finally_statement)
{
    try_statement_t *ret;

    ret = new_statement(ctx, STAT_TRY, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->try_statement = try_statement;
    ret->catch_block = catch_block;
    ret->finally_statement = finally_statement;

    return &ret->stat;
}
