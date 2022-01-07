
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * recipNonce; int * transactionID; int * senderNonce; } ;
struct TYPE_4__ {scalar_t__ expected; TYPE_2__* cmp_ctx; int hdr; } ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_cmp (int *,int *) ;
 int * OSSL_CMP_HDR_get0_recipNonce (int ) ;
 int * OSSL_CMP_HDR_get0_transactionID (int ) ;
 int OSSL_CMP_PVNO ;
 int TEST_int_eq (scalar_t__,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int * ossl_cmp_hdr_get0_senderNonce (int ) ;
 scalar_t__ ossl_cmp_hdr_get_pvno (int ) ;
 int ossl_cmp_hdr_init (TYPE_2__*,int ) ;

__attribute__((used)) static int execute_HDR_init_test(CMP_HDR_TEST_FIXTURE *fixture)
{
    ASN1_OCTET_STRING *header_nonce = ((void*)0);
    ASN1_OCTET_STRING *ctx_nonce = ((void*)0);
    int res = 0;

    if (!TEST_int_eq(fixture->expected,
                     ossl_cmp_hdr_init(fixture->cmp_ctx, fixture->hdr)))
        goto err;
    if (fixture->expected != 0) {
        if (!TEST_int_eq(ossl_cmp_hdr_get_pvno(fixture->hdr), OSSL_CMP_PVNO)
                || !TEST_true(0 == ASN1_OCTET_STRING_cmp(
                        ossl_cmp_hdr_get0_senderNonce(fixture->hdr),
                        fixture->cmp_ctx->senderNonce))
                || !TEST_true(0 == ASN1_OCTET_STRING_cmp(
                            OSSL_CMP_HDR_get0_transactionID(fixture->hdr),
                            fixture->cmp_ctx->transactionID)))
            goto err;
        header_nonce = OSSL_CMP_HDR_get0_recipNonce(fixture->hdr);
        ctx_nonce = fixture->cmp_ctx->recipNonce;
        if (ctx_nonce != ((void*)0)
                && (!TEST_ptr(header_nonce)
                || !TEST_int_eq(0, ASN1_OCTET_STRING_cmp(header_nonce,
                                                         ctx_nonce))))
            goto err;
    }

    res = 1;

 err:
    return res;
}
