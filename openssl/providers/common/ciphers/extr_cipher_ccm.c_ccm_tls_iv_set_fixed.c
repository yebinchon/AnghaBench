
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iv; } ;
typedef TYPE_1__ PROV_CCM_CTX ;


 size_t EVP_CCM_TLS_FIXED_IV_LEN ;
 int memcpy (int ,unsigned char*,size_t) ;

__attribute__((used)) static int ccm_tls_iv_set_fixed(PROV_CCM_CTX *ctx, unsigned char *fixed,
                                size_t flen)
{
    if (flen != EVP_CCM_TLS_FIXED_IV_LEN)
        return 0;


    memcpy(ctx->iv, fixed, flen);
    return 1;
}
