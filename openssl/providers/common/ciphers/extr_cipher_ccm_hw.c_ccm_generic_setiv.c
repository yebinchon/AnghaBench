
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ccm_ctx; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 scalar_t__ CRYPTO_ccm128_setiv (int *,unsigned char const*,size_t,size_t) ;

int ccm_generic_setiv(PROV_CCM_CTX *ctx, const unsigned char *nonce,
                      size_t nlen, size_t mlen)
{
    return CRYPTO_ccm128_setiv(&ctx->ccm_ctx, nonce, nlen, mlen) == 0;
}
