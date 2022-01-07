
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int source_elements_t ;
struct TYPE_3__ {int hres; int lexer_error; int * source; } ;
typedef TYPE_1__ parser_ctx_t ;


 int S_OK ;

__attribute__((used)) static void program_parsed(parser_ctx_t *ctx, source_elements_t *source)
{
    ctx->source = source;
    if(!ctx->lexer_error)
        ctx->hres = S_OK;
}
