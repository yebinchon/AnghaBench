
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gcm; } ;
typedef TYPE_1__ PROV_GCM_CTX ;


 int CRYPTO_gcm128_setiv (int *,unsigned char const*,size_t) ;

int gcm_setiv(PROV_GCM_CTX *ctx, const unsigned char *iv, size_t ivlen)
{
    CRYPTO_gcm128_setiv(&ctx->gcm, iv, ivlen);
    return 1;
}
