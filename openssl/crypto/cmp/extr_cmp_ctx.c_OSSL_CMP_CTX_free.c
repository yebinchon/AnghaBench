
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length; int data; } ;
struct TYPE_5__ {int extraCertsIn; int caPubs; int newCert; int statusString; int genm_ITAVs; int p10CSR; int oldCert; int policies; int reqExtensions; int subjectAltNames; int subjectName; int issuer; int newPkey; int extraCertsOut; int geninfo_ITAVs; TYPE_4__* recipNonce; TYPE_4__* senderNonce; TYPE_4__* transactionID; int recipient; TYPE_4__* secretValue; TYPE_4__* referenceValue; int pkey; int clCert; int untrusted_certs; int trusted; int expected_sender; int validatedSrvCert; int srvCert; struct TYPE_5__* proxyName; struct TYPE_5__* serverName; struct TYPE_5__* serverPath; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int ASN1_OCTET_STRING_free (TYPE_4__*) ;
 int ASN1_UTF8STRING_free ;
 int EVP_PKEY_free (int ) ;
 int GENERAL_NAME_free ;
 int OPENSSL_cleanse (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int OSSL_CMP_ITAV_free ;
 int POLICYINFO_free ;
 int X509_EXTENSION_free ;
 int X509_NAME_free (int ) ;
 int X509_REQ_free (int ) ;
 int X509_STORE_free (int ) ;
 int X509_free (int ) ;
 int sk_ASN1_UTF8STRING_pop_free (int ,int ) ;
 int sk_GENERAL_NAME_pop_free (int ,int ) ;
 int sk_OSSL_CMP_ITAV_pop_free (int ,int ) ;
 int sk_POLICYINFO_pop_free (int ,int ) ;
 int sk_X509_EXTENSION_pop_free (int ,int ) ;
 int sk_X509_pop_free (int ,int (*) (int )) ;

void OSSL_CMP_CTX_free(OSSL_CMP_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;

    OPENSSL_free(ctx->serverPath);
    OPENSSL_free(ctx->serverName);
    OPENSSL_free(ctx->proxyName);

    X509_free(ctx->srvCert);
    X509_free(ctx->validatedSrvCert);
    X509_NAME_free(ctx->expected_sender);
    X509_STORE_free(ctx->trusted);
    sk_X509_pop_free(ctx->untrusted_certs, X509_free);

    X509_free(ctx->clCert);
    EVP_PKEY_free(ctx->pkey);
    ASN1_OCTET_STRING_free(ctx->referenceValue);
    if (ctx->secretValue != ((void*)0))
        OPENSSL_cleanse(ctx->secretValue->data, ctx->secretValue->length);
    ASN1_OCTET_STRING_free(ctx->secretValue);

    X509_NAME_free(ctx->recipient);
    ASN1_OCTET_STRING_free(ctx->transactionID);
    ASN1_OCTET_STRING_free(ctx->senderNonce);
    ASN1_OCTET_STRING_free(ctx->recipNonce);
    sk_OSSL_CMP_ITAV_pop_free(ctx->geninfo_ITAVs, OSSL_CMP_ITAV_free);
    sk_X509_pop_free(ctx->extraCertsOut, X509_free);

    EVP_PKEY_free(ctx->newPkey);
    X509_NAME_free(ctx->issuer);
    X509_NAME_free(ctx->subjectName);
    sk_GENERAL_NAME_pop_free(ctx->subjectAltNames, GENERAL_NAME_free);
    sk_X509_EXTENSION_pop_free(ctx->reqExtensions, X509_EXTENSION_free);
    sk_POLICYINFO_pop_free(ctx->policies, POLICYINFO_free);
    X509_free(ctx->oldCert);
    X509_REQ_free(ctx->p10CSR);

    sk_OSSL_CMP_ITAV_pop_free(ctx->genm_ITAVs, OSSL_CMP_ITAV_free);

    sk_ASN1_UTF8STRING_pop_free(ctx->statusString, ASN1_UTF8STRING_free);
    X509_free(ctx->newCert);
    sk_X509_pop_free(ctx->caPubs, X509_free);
    sk_X509_pop_free(ctx->extraCertsIn, X509_free);

    OPENSSL_free(ctx);
}
