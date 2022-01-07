
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_ctx {scalar_t__ implicit_iv_len; int * hmac; int * cipher; } ;


 int cipher_ctx_free (int *) ;
 int hmac_ctx_cleanup (int *) ;
 int hmac_ctx_free (int *) ;

void
free_key_ctx(struct key_ctx *ctx)
{
    if (ctx->cipher)
    {
        cipher_ctx_free(ctx->cipher);
        ctx->cipher = ((void*)0);
    }
    if (ctx->hmac)
    {
        hmac_ctx_cleanup(ctx->hmac);
        hmac_ctx_free(ctx->hmac);
        ctx->hmac = ((void*)0);
    }
    ctx->implicit_iv_len = 0;
}
