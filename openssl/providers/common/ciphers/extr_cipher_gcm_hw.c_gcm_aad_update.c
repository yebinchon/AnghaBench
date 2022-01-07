
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gcm; } ;
typedef TYPE_1__ PROV_GCM_CTX ;


 scalar_t__ CRYPTO_gcm128_aad (int *,unsigned char const*,size_t) ;

int gcm_aad_update(PROV_GCM_CTX *ctx, const unsigned char *aad, size_t aad_len)
{
    return CRYPTO_gcm128_aad(&ctx->gcm, aad, aad_len) == 0;
}
