
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int micros; int millis; int seconds; int mds; int default_policy; int policies; int certs; int signer_key; int signer_cert; } ;
typedef TYPE_1__ TS_RESP_CTX ;


 int ASN1_INTEGER_free (int ) ;
 int ASN1_OBJECT_free (int ) ;
 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int X509_free (int ) ;
 int sk_ASN1_OBJECT_pop_free (int ,int (*) (int )) ;
 int sk_EVP_MD_free (int ) ;
 int sk_X509_pop_free (int ,int (*) (int )) ;

void TS_RESP_CTX_free(TS_RESP_CTX *ctx)
{
    if (!ctx)
        return;

    X509_free(ctx->signer_cert);
    EVP_PKEY_free(ctx->signer_key);
    sk_X509_pop_free(ctx->certs, X509_free);
    sk_ASN1_OBJECT_pop_free(ctx->policies, ASN1_OBJECT_free);
    ASN1_OBJECT_free(ctx->default_policy);
    sk_EVP_MD_free(ctx->mds);
    ASN1_INTEGER_free(ctx->seconds);
    ASN1_INTEGER_free(ctx->millis);
    ASN1_INTEGER_free(ctx->micros);
    OPENSSL_free(ctx);
}
