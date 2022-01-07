
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ error; int num_untrusted; int * cert; int * chain; int * dane; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int SSL_DANE ;


 scalar_t__ DANETLS_ENABLED (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int X509_F_X509_VERIFY_CERT ;
 int X509_R_NO_CERT_SET_FOR_US_TO_VERIFY ;
 int X509_V_ERR_EE_KEY_TOO_SMALL ;
 void* X509_V_ERR_INVALID_CALL ;
 scalar_t__ X509_V_ERR_OUT_OF_MEM ;
 scalar_t__ X509_V_ERR_UNSPECIFIED ;
 scalar_t__ X509_V_OK ;
 int X509_up_ref (int *) ;
 int X509err (int ,int ) ;
 int check_key_level (TYPE_1__*,int *) ;
 int dane_verify (TYPE_1__*) ;
 int * sk_X509_new_null () ;
 int sk_X509_push (int *,int *) ;
 int verify_cb_cert (TYPE_1__*,int *,int ,int ) ;
 int verify_chain (TYPE_1__*) ;

int X509_verify_cert(X509_STORE_CTX *ctx)
{
    SSL_DANE *dane = ctx->dane;
    int ret;

    if (ctx->cert == ((void*)0)) {
        X509err(X509_F_X509_VERIFY_CERT, X509_R_NO_CERT_SET_FOR_US_TO_VERIFY);
        ctx->error = X509_V_ERR_INVALID_CALL;
        return -1;
    }

    if (ctx->chain != ((void*)0)) {




        X509err(X509_F_X509_VERIFY_CERT, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        ctx->error = X509_V_ERR_INVALID_CALL;
        return -1;
    }





    if (((ctx->chain = sk_X509_new_null()) == ((void*)0)) ||
        (!sk_X509_push(ctx->chain, ctx->cert))) {
        X509err(X509_F_X509_VERIFY_CERT, ERR_R_MALLOC_FAILURE);
        ctx->error = X509_V_ERR_OUT_OF_MEM;
        return -1;
    }
    X509_up_ref(ctx->cert);
    ctx->num_untrusted = 1;


    if (!check_key_level(ctx, ctx->cert) &&
        !verify_cb_cert(ctx, ctx->cert, 0, X509_V_ERR_EE_KEY_TOO_SMALL))
        return 0;

    if (DANETLS_ENABLED(dane))
        ret = dane_verify(ctx);
    else
        ret = verify_chain(ctx);






    if (ret <= 0 && ctx->error == X509_V_OK)
        ctx->error = X509_V_ERR_UNSPECIFIED;
    return ret;
}
