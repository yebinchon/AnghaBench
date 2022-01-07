
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ccm_ctx; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 int CRYPTO_ccm128_aad (int *,unsigned char const*,size_t) ;

int ccm_generic_setaad(PROV_CCM_CTX *ctx, const unsigned char *aad, size_t alen)
{
    CRYPTO_ccm128_aad(&ctx->ccm_ctx, aad, alen);
    return 1;
}
