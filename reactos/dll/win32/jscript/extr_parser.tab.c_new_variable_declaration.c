
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * global_next; int * next; int * expr; int const* identifier; } ;
typedef TYPE_1__ variable_declaration_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
typedef int WCHAR ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static variable_declaration_t *new_variable_declaration(parser_ctx_t *ctx, const WCHAR *identifier, expression_t *expr)
{
    variable_declaration_t *ret = parser_alloc(ctx, sizeof(variable_declaration_t));

    ret->identifier = identifier;
    ret->expr = expr;
    ret->next = ((void*)0);
    ret->global_next = ((void*)0);

    return ret;
}
