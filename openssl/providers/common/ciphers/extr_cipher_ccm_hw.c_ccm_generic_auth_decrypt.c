
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ccm_ctx; int * str; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 scalar_t__ CRYPTO_ccm128_decrypt (int *,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_ccm128_decrypt_ccm64 (int *,unsigned char const*,unsigned char*,size_t,int *) ;
 int CRYPTO_ccm128_tag (int *,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char*,size_t) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;

int ccm_generic_auth_decrypt(PROV_CCM_CTX *ctx, const unsigned char *in,
                             unsigned char *out, size_t len,
                             unsigned char *expected_tag, size_t taglen)
{
    int rv = 0;

    if (ctx->str != ((void*)0))
        rv = CRYPTO_ccm128_decrypt_ccm64(&ctx->ccm_ctx, in, out, len,
                                         ctx->str) == 0;
    else
        rv = CRYPTO_ccm128_decrypt(&ctx->ccm_ctx, in, out, len) == 0;
    if (rv) {
        unsigned char tag[16];

        if (!CRYPTO_ccm128_tag(&ctx->ccm_ctx, tag, taglen)
            || CRYPTO_memcmp(tag, expected_tag, taglen) != 0)
            rv = 0;
    }
    if (rv == 0)
        OPENSSL_cleanse(out, len);
    return rv;
}
