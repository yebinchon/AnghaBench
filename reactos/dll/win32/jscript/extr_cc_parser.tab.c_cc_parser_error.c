
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hres; } ;
typedef TYPE_1__ parser_ctx_t ;


 int JS_E_SYNTAX ;
 scalar_t__ SUCCEEDED (int ) ;
 int WARN (char*,char const*) ;

__attribute__((used)) static int cc_parser_error(parser_ctx_t *ctx, const char *str)
{
    if(SUCCEEDED(ctx->hres)) {
        WARN("%s\n", str);
        ctx->hres = JS_E_SYNTAX;
    }

    return 0;
}
