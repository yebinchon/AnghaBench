
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int referenceValue; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int ossl_cmp_asn1_octet_string_set1_bytes (int *,unsigned char const*,int) ;

int OSSL_CMP_CTX_set1_referenceValue(OSSL_CMP_CTX *ctx,
                                     const unsigned char *ref, int len)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    return ossl_cmp_asn1_octet_string_set1_bytes(&ctx->referenceValue, ref,
                                                 len);
}
