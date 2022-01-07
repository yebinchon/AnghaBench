
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int failInfoCode; int msgtimeout; int pbm_slen; int pbm_itercnt; int revocationReason; int popoMethod; void* digest; int pbm_mac; void* pbm_owf; int * untrusted_certs; void* proxyPort; void* serverPort; int log_verbosity; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CRL_REASON_NONE ;
 int NID_hmac_sha1 ;
 void* NID_sha256 ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int OSSL_CMP_CTX_free (TYPE_1__*) ;
 void* OSSL_CMP_DEFAULT_PORT ;
 int OSSL_CMP_LOG_INFO ;
 int OSSL_CRMF_POPO_SIGNATURE ;
 int * sk_X509_new_null () ;

OSSL_CMP_CTX *OSSL_CMP_CTX_new(void)
{
    OSSL_CMP_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0))
        return ((void*)0);

    ctx->log_verbosity = OSSL_CMP_LOG_INFO;

    ctx->status = -1;
    ctx->failInfoCode = -1;

    ctx->serverPort = OSSL_CMP_DEFAULT_PORT;
    ctx->proxyPort = OSSL_CMP_DEFAULT_PORT;
    ctx->msgtimeout = 2 * 60;

    if ((ctx->untrusted_certs = sk_X509_new_null()) == ((void*)0))
        goto err;

    ctx->pbm_slen = 16;
    ctx->pbm_owf = NID_sha256;
    ctx->pbm_itercnt = 500;
    ctx->pbm_mac = NID_hmac_sha1;

    ctx->digest = NID_sha256;
    ctx->popoMethod = OSSL_CRMF_POPO_SIGNATURE;
    ctx->revocationReason = CRL_REASON_NONE;


    return ctx;

 err:
    OSSL_CMP_CTX_free(ctx);
    return ((void*)0);
}
