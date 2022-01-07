
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hres; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int BOOL ;


 int SUCCEEDED (int ) ;
 int S_OK ;
 int cc_parser_parse (TYPE_1__*) ;

BOOL parse_cc_expr(parser_ctx_t *ctx)
{
    ctx->hres = S_OK;
    cc_parser_parse(ctx);
    return SUCCEEDED(ctx->hres);
}
