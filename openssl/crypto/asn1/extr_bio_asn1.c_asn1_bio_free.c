
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* buf; } ;
typedef TYPE_1__ BIO_ASN1_BUF_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static int asn1_bio_free(BIO *b)
{
    BIO_ASN1_BUF_CTX *ctx;

    if (b == ((void*)0))
        return 0;

    ctx = BIO_get_data(b);
    if (ctx == ((void*)0))
        return 0;

    OPENSSL_free(ctx->buf);
    OPENSSL_free(ctx);
    BIO_set_data(b, ((void*)0));
    BIO_set_init(b, 0);

    return 1;
}
