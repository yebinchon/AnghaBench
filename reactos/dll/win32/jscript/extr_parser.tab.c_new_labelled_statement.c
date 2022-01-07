
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int statement_t ;
typedef int parser_ctx_t ;
struct TYPE_3__ {int stat; int * statement; int const* identifier; } ;
typedef TYPE_1__ labelled_statement_t ;
typedef int WCHAR ;


 int STAT_LABEL ;
 TYPE_1__* new_statement (int *,int ,int) ;

__attribute__((used)) static statement_t *new_labelled_statement(parser_ctx_t *ctx, const WCHAR *identifier, statement_t *statement)
{
    labelled_statement_t *ret;

    ret = new_statement(ctx, STAT_LABEL, sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->identifier = identifier;
    ret->statement = statement;

    return &ret->stat;
}
