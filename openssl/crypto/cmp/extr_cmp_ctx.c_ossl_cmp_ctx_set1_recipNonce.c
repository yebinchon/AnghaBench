
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recipNonce; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;
typedef int ASN1_OCTET_STRING ;


 int ossl_assert (int ) ;
 int ossl_cmp_asn1_octet_string_set1 (int *,int const*) ;

int ossl_cmp_ctx_set1_recipNonce(OSSL_CMP_CTX *ctx,
                            const ASN1_OCTET_STRING *nonce)
{
    if (!ossl_assert(ctx != ((void*)0)))
        return 0;
    return ossl_cmp_asn1_octet_string_set1(&ctx->recipNonce, nonce);
}
