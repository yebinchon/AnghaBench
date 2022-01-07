
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lexer_error; int hres; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int HRESULT ;


 int TRUE ;

__attribute__((used)) static int lex_error(parser_ctx_t *ctx, HRESULT hres)
{
    ctx->hres = hres;
    ctx->lexer_error = TRUE;
    return -1;
}
