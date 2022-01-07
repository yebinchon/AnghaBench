
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tsa_name; int nonce; int data; int imprint; int md_alg; int policy; int certs; int store; } ;
typedef TYPE_1__ TS_VERIFY_CTX ;


 int ASN1_INTEGER_free (int ) ;
 int ASN1_OBJECT_free (int ) ;
 int BIO_free_all (int ) ;
 int GENERAL_NAME_free (int ) ;
 int OPENSSL_free (int ) ;
 int TS_VERIFY_CTX_init (TYPE_1__*) ;
 int X509_ALGOR_free (int ) ;
 int X509_STORE_free (int ) ;
 int X509_free ;
 int sk_X509_pop_free (int ,int ) ;

void TS_VERIFY_CTX_cleanup(TS_VERIFY_CTX *ctx)
{
    if (!ctx)
        return;

    X509_STORE_free(ctx->store);
    sk_X509_pop_free(ctx->certs, X509_free);

    ASN1_OBJECT_free(ctx->policy);

    X509_ALGOR_free(ctx->md_alg);
    OPENSSL_free(ctx->imprint);

    BIO_free_all(ctx->data);

    ASN1_INTEGER_free(ctx->nonce);

    GENERAL_NAME_free(ctx->tsa_name);

    TS_VERIFY_CTX_init(ctx);
}
