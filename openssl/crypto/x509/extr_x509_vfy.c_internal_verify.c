
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int error_depth; int chain; int (* verify_cb ) (int,TYPE_2__*) ;int * current_cert; int * current_issuer; TYPE_1__* param; scalar_t__ (* check_issued ) (TYPE_2__*,int *,int *) ;scalar_t__ bare_ta_signed; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_8__ {int flags; } ;
typedef int EVP_PKEY ;


 int X509_V_ERR_CERT_SIGNATURE_FAILURE ;
 int X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY ;
 int X509_V_ERR_UNABLE_TO_VERIFY_LEAF_SIGNATURE ;
 int X509_V_FLAG_CHECK_SS_SIGNATURE ;
 int X509_V_FLAG_PARTIAL_CHAIN ;
 int * X509_get0_pubkey (int *) ;
 scalar_t__ X509_verify (int *,int *) ;
 int sk_X509_num (int ) ;
 int * sk_X509_value (int ,int) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int *) ;
 int stub2 (int,TYPE_2__*) ;
 int verify_cb_cert (TYPE_2__*,int *,int,int ) ;
 int x509_check_cert_time (TYPE_2__*,int *,int) ;

__attribute__((used)) static int internal_verify(X509_STORE_CTX *ctx)
{
    int n = sk_X509_num(ctx->chain) - 1;
    X509 *xi = sk_X509_value(ctx->chain, n);
    X509 *xs;






    if (ctx->bare_ta_signed) {
        xs = xi;
        xi = ((void*)0);
        goto check_cert;
    }

    if (ctx->check_issued(ctx, xi, xi))
        xs = xi;
    else {
        if (ctx->param->flags & X509_V_FLAG_PARTIAL_CHAIN) {
            xs = xi;
            goto check_cert;
        }
        if (n <= 0)
            return verify_cb_cert(ctx, xi, 0,
                                  X509_V_ERR_UNABLE_TO_VERIFY_LEAF_SIGNATURE);
        n--;
        ctx->error_depth = n;
        xs = sk_X509_value(ctx->chain, n);
    }





    while (n >= 0) {
        EVP_PKEY *pkey;







        if (xs != xi || (ctx->param->flags & X509_V_FLAG_CHECK_SS_SIGNATURE)) {
            if ((pkey = X509_get0_pubkey(xi)) == ((void*)0)) {
                if (!verify_cb_cert(ctx, xi, xi != xs ? n+1 : n,
                        X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY))
                    return 0;
            } else if (X509_verify(xs, pkey) <= 0) {
                if (!verify_cb_cert(ctx, xs, n,
                                    X509_V_ERR_CERT_SIGNATURE_FAILURE))
                    return 0;
            }
        }

 check_cert:

        if (!x509_check_cert_time(ctx, xs, n))
            return 0;





        ctx->current_issuer = xi;
        ctx->current_cert = xs;
        ctx->error_depth = n;
        if (!ctx->verify_cb(1, ctx))
            return 0;

        if (--n >= 0) {
            xi = xs;
            xs = sk_X509_value(ctx->chain, n);
        }
    }
    return 1;
}
