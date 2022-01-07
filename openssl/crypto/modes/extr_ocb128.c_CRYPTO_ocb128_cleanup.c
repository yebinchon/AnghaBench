
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_l_index; int l; } ;
typedef TYPE_1__ OCB128_CONTEXT ;


 int OPENSSL_cleanse (TYPE_1__*,int) ;
 int OPENSSL_clear_free (int ,int) ;

void CRYPTO_ocb128_cleanup(OCB128_CONTEXT *ctx)
{
    if (ctx) {
        OPENSSL_clear_free(ctx->l, ctx->max_l_index * 16);
        OPENSSL_cleanse(ctx, sizeof(*ctx));
    }
}
