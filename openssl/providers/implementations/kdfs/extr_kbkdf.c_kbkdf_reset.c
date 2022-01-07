
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iv_len; int iv; int ki_len; int ki; int label_len; int label; int context_len; int context; int ctx_init; } ;
typedef TYPE_1__ KBKDF ;


 int EVP_MAC_CTX_free (int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void kbkdf_reset(void *vctx)
{
    KBKDF *ctx = (KBKDF *)vctx;

    EVP_MAC_CTX_free(ctx->ctx_init);
    OPENSSL_clear_free(ctx->context, ctx->context_len);
    OPENSSL_clear_free(ctx->label, ctx->label_len);
    OPENSSL_clear_free(ctx->ki, ctx->ki_len);
    OPENSSL_clear_free(ctx->iv, ctx->iv_len);
    memset(ctx, 0, sizeof(*ctx));
}
