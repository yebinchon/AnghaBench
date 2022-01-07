
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_3__ {int expr; int const* identifier; } ;
typedef TYPE_1__ identifier_expression_t ;
typedef int expression_t ;
typedef int WCHAR ;


 int EXPR_IDENT ;
 TYPE_1__* new_expression (int *,int ,int) ;

__attribute__((used)) static expression_t *new_identifier_expression(parser_ctx_t *ctx, const WCHAR *identifier)
{
    identifier_expression_t *ret = new_expression(ctx, EXPR_IDENT, sizeof(*ret));

    ret->identifier = identifier;

    return &ret->expr;
}
