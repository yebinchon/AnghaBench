
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_ctx_bi {int decrypt; int encrypt; } ;


 int free_key_ctx (int *) ;

void
free_key_ctx_bi(struct key_ctx_bi *ctx)
{
    free_key_ctx(&ctx->encrypt);
    free_key_ctx(&ctx->decrypt);
}
