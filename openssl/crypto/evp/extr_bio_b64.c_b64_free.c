
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base64; } ;
typedef TYPE_1__ BIO_B64_CTX ;
typedef int BIO ;


 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int EVP_ENCODE_CTX_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static int b64_free(BIO *a)
{
    BIO_B64_CTX *ctx;
    if (a == ((void*)0))
        return 0;

    ctx = BIO_get_data(a);
    if (ctx == ((void*)0))
        return 0;

    EVP_ENCODE_CTX_free(ctx->base64);
    OPENSSL_free(ctx);
    BIO_set_data(a, ((void*)0));
    BIO_set_init(a, 0);

    return 1;
}
