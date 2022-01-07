
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tail; int * head; } ;
typedef TYPE_1__ variable_list_t ;
typedef int variable_declaration_t ;
typedef int parser_ctx_t ;


 TYPE_1__* parser_alloc_tmp (int *,int) ;

__attribute__((used)) static variable_list_t *new_variable_list(parser_ctx_t *ctx, variable_declaration_t *decl)
{
    variable_list_t *ret = parser_alloc_tmp(ctx, sizeof(variable_list_t));

    ret->head = ret->tail = decl;

    return ret;
}
