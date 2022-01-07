
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ccm_ctx; int * str; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 scalar_t__ CRYPTO_ccm128_encrypt (int *,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_ccm128_encrypt_ccm64 (int *,unsigned char const*,unsigned char*,size_t,int *) ;
 scalar_t__ CRYPTO_ccm128_tag (int *,unsigned char*,size_t) ;

int ccm_generic_auth_encrypt(PROV_CCM_CTX *ctx, const unsigned char *in,
                             unsigned char *out, size_t len,
                             unsigned char *tag, size_t taglen)
{
    int rv;

    if (ctx->str != ((void*)0))
        rv = CRYPTO_ccm128_encrypt_ccm64(&ctx->ccm_ctx, in,
                                         out, len, ctx->str) == 0;
    else
        rv = CRYPTO_ccm128_encrypt(&ctx->ccm_ctx, in, out, len) == 0;

    if (rv == 1 && tag != ((void*)0))
        rv = (CRYPTO_ccm128_tag(&ctx->ccm_ctx, tag, taglen) > 0);
    return rv;
}
