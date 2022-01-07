
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int statement_t ;
struct TYPE_4__ {int * tail; int * head; } ;
typedef TYPE_1__ statement_list_t ;
typedef int parser_ctx_t ;


 TYPE_1__* parser_alloc_tmp (int *,int) ;

__attribute__((used)) static statement_list_t *new_statement_list(parser_ctx_t *ctx, statement_t *statement)
{
    statement_list_t *ret = parser_alloc_tmp(ctx, sizeof(statement_list_t));

    ret->head = ret->tail = statement;

    return ret;
}
