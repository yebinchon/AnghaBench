
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cont; int start; int * base64; } ;
typedef TYPE_1__ BIO_B64_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,TYPE_1__*) ;
 int BIO_set_init (int *,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int * EVP_ENCODE_CTX_new () ;
 int EVP_F_B64_NEW ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int b64_new(BIO *bi)
{
    BIO_B64_CTX *ctx;

    if ((ctx = OPENSSL_zalloc(sizeof(*ctx))) == ((void*)0)) {
        EVPerr(EVP_F_B64_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->cont = 1;
    ctx->start = 1;
    ctx->base64 = EVP_ENCODE_CTX_new();
    if (ctx->base64 == ((void*)0)) {
        OPENSSL_free(ctx);
        return 0;
    }

    BIO_set_data(bi, ctx);
    BIO_set_init(bi, 1);

    return 1;
}
