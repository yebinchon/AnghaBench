
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ccm_ctx; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 scalar_t__ CRYPTO_ccm128_tag (int *,unsigned char*,size_t) ;

int ccm_generic_gettag(PROV_CCM_CTX *ctx, unsigned char *tag, size_t tlen)
{
    return CRYPTO_ccm128_tag(&ctx->ccm_ctx, tag, tlen) > 0;
}
