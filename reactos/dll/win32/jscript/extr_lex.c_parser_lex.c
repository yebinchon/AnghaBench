
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nl; scalar_t__ ptr; scalar_t__ begin; } ;
typedef TYPE_1__ parser_ctx_t ;


 int cc_token (TYPE_1__*,void*) ;
 int next_token (TYPE_1__*,void*) ;

int parser_lex(void *lval, parser_ctx_t *ctx)
{
    int ret;

    ctx->nl = ctx->ptr == ctx->begin;

    do {
        ret = next_token(ctx, lval);
    } while(ret == '@' && !(ret = cc_token(ctx, lval)));

    return ret;
}
