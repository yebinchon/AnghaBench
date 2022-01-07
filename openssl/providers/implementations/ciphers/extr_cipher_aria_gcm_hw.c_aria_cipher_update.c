
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gcm; scalar_t__ enc; } ;
typedef TYPE_1__ PROV_GCM_CTX ;


 scalar_t__ CRYPTO_gcm128_decrypt (int *,unsigned char const*,unsigned char*,size_t) ;
 scalar_t__ CRYPTO_gcm128_encrypt (int *,unsigned char const*,unsigned char*,size_t) ;

__attribute__((used)) static int aria_cipher_update(PROV_GCM_CTX *ctx, const unsigned char *in,
                              size_t len, unsigned char *out)
{
    if (ctx->enc) {
        if (CRYPTO_gcm128_encrypt(&ctx->gcm, in, out, len))
            return 0;
    } else {
        if (CRYPTO_gcm128_decrypt(&ctx->gcm, in, out, len))
            return 0;
    }
    return 1;
}
