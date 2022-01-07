
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transactionID; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;
typedef int ASN1_OCTET_STRING ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int ossl_cmp_asn1_octet_string_set1 (int *,int const*) ;

int OSSL_CMP_CTX_set1_transactionID(OSSL_CMP_CTX *ctx,
                                    const ASN1_OCTET_STRING *id)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    return ossl_cmp_asn1_octet_string_set1(&ctx->transactionID, id);
}
