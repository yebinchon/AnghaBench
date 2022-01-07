
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int taglen; int gcm; scalar_t__ enc; } ;
typedef TYPE_1__ PROV_GCM_CTX ;


 scalar_t__ CRYPTO_gcm128_finish (int *,unsigned char*,int ) ;
 int CRYPTO_gcm128_tag (int *,unsigned char*,int ) ;
 int GCM_TAG_MAX_SIZE ;

int gcm_cipher_final(PROV_GCM_CTX *ctx, unsigned char *tag)
{
    if (ctx->enc) {
        CRYPTO_gcm128_tag(&ctx->gcm, tag, GCM_TAG_MAX_SIZE);
        ctx->taglen = GCM_TAG_MAX_SIZE;
    } else {
        if (CRYPTO_gcm128_finish(&ctx->gcm, tag, ctx->taglen) != 0)
            return 0;
    }
    return 1;
}
