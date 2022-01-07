
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_13__ {int * freeText; int * transactionID; int * recipNonce; int * clCert; int * oldCert; int * issuer; int * recipient; int * expected_sender; int * srvCert; int * referenceValue; int * subjectName; } ;
struct TYPE_12__ {int * senderNonce; int transactionID; int recipNonce; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef TYPE_2__ OSSL_CMP_CTX ;


 int CMP_R_MISSING_SENDER_IDENTIFICATION ;
 int CMPerr (int ,int ) ;
 int OSSL_CMP_CTX_set1_expected_sender (TYPE_2__*,int *) ;
 int OSSL_CMP_CTX_set1_senderNonce (TYPE_2__*,int *) ;
 int OSSL_CMP_PVNO ;
 int OSSL_CMP_SENDERNONCE_LENGTH ;
 int OSSL_CMP_TRANSACTIONID_LENGTH ;
 int * X509_get_issuer_name (int *) ;
 int * X509_get_subject_name (int *) ;
 int ossl_assert (int) ;
 int ossl_cmp_asn1_octet_string_set1 (int *,int *) ;
 int ossl_cmp_hdr_push1_freeText (TYPE_1__*,int *) ;
 int ossl_cmp_hdr_set1_recipient (TYPE_1__*,int *) ;
 int ossl_cmp_hdr_set1_sender (TYPE_1__*,int *) ;
 int ossl_cmp_hdr_set_pvno (TYPE_1__*,int ) ;
 int ossl_cmp_hdr_update_messageTime (TYPE_1__*) ;
 int set1_aostr_else_random (int **,int *,int ) ;

int ossl_cmp_hdr_init(OSSL_CMP_CTX *ctx, OSSL_CMP_PKIHEADER *hdr)
{
    X509_NAME *sender;
    X509_NAME *rcp = ((void*)0);

    if (!ossl_assert(ctx != ((void*)0) && hdr != ((void*)0)))
        return 0;


    if (!ossl_cmp_hdr_set_pvno(hdr, OSSL_CMP_PVNO))
        return 0;

    sender = ctx->clCert != ((void*)0) ?
        X509_get_subject_name(ctx->clCert) : ctx->subjectName;







    if (sender == ((void*)0) && ctx->referenceValue == ((void*)0)) {
        CMPerr(0, CMP_R_MISSING_SENDER_IDENTIFICATION);
        return 0;
    }
    if (!ossl_cmp_hdr_set1_sender(hdr, sender))
        return 0;


    if (ctx->srvCert != ((void*)0)) {
        rcp = X509_get_subject_name(ctx->srvCert);

        if (ctx->expected_sender == ((void*)0) && rcp != ((void*)0)
                && !OSSL_CMP_CTX_set1_expected_sender(ctx, rcp))
            return 0;
    } else if (ctx->recipient != ((void*)0)) {
        rcp = ctx->recipient;
    } else if (ctx->issuer != ((void*)0)) {
        rcp = ctx->issuer;
    } else if (ctx->oldCert != ((void*)0)) {
        rcp = X509_get_issuer_name(ctx->oldCert);
    } else if (ctx->clCert != ((void*)0)) {
        rcp = X509_get_issuer_name(ctx->clCert);
    }
    if (!ossl_cmp_hdr_set1_recipient(hdr, rcp))
        return 0;


    if (!ossl_cmp_hdr_update_messageTime(hdr))
        return 0;

    if (ctx->recipNonce != ((void*)0)
            && !ossl_cmp_asn1_octet_string_set1(&hdr->recipNonce,
                                                ctx->recipNonce))
        return 0;
    if (ctx->transactionID == ((void*)0)
            && !set1_aostr_else_random(&ctx->transactionID, ((void*)0),
                                       OSSL_CMP_TRANSACTIONID_LENGTH))
        return 0;
    if (!ossl_cmp_asn1_octet_string_set1(&hdr->transactionID,
                                         ctx->transactionID))
        return 0;
    if (!set1_aostr_else_random(&hdr->senderNonce, ((void*)0),
                                OSSL_CMP_SENDERNONCE_LENGTH))
        return 0;


    if (!OSSL_CMP_CTX_set1_senderNonce(ctx, hdr->senderNonce))
        return 0;






    if (ctx->freeText != ((void*)0)
            && !ossl_cmp_hdr_push1_freeText(hdr, ctx->freeText))
        return 0;

    return 1;
}
