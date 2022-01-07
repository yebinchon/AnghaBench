
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ num_untrusted; int chain; TYPE_1__* param; TYPE_3__* dane; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_12__ {int pdpth; scalar_t__ mdpth; } ;
struct TYPE_10__ {int flags; int trust; } ;
typedef TYPE_3__ SSL_DANE ;


 int DANETLS_ENABLED (TYPE_3__*) ;
 scalar_t__ DANETLS_HAS_TA (TYPE_3__*) ;


 int X509_TRUST_UNTRUSTED ;
 int X509_V_ERR_CERT_REJECTED ;
 int X509_V_FLAG_PARTIAL_CHAIN ;
 int X509_check_trust (int *,int ,int ) ;
 int X509_free (int *) ;
 int check_dane_issuer (TYPE_2__*,int) ;
 int * lookup_cert_match (TYPE_2__*,int *) ;
 int sk_X509_num (int ) ;
 int sk_X509_set (int ,int ,int *) ;
 int * sk_X509_value (int ,int) ;
 int verify_cb_cert (TYPE_2__*,int *,int,int ) ;

__attribute__((used)) static int check_trust(X509_STORE_CTX *ctx, int num_untrusted)
{
    int i;
    X509 *x = ((void*)0);
    X509 *mx;
    SSL_DANE *dane = ctx->dane;
    int num = sk_X509_num(ctx->chain);
    int trust;





    if (DANETLS_HAS_TA(dane) && num_untrusted > 0 && num_untrusted < num) {
        switch (trust = check_dane_issuer(ctx, num_untrusted)) {
        case 128:
        case 129:
            return trust;
        }
    }







    for (i = num_untrusted; i < num; i++) {
        x = sk_X509_value(ctx->chain, i);
        trust = X509_check_trust(x, ctx->param->trust, 0);

        if (trust == 128)
            goto trusted;
        if (trust == 129)
            goto rejected;
    }





    if (num_untrusted < num) {
        if (ctx->param->flags & X509_V_FLAG_PARTIAL_CHAIN)
            goto trusted;
        return X509_TRUST_UNTRUSTED;
    }

    if (num_untrusted == num && ctx->param->flags & X509_V_FLAG_PARTIAL_CHAIN) {




        i = 0;
        x = sk_X509_value(ctx->chain, i);
        mx = lookup_cert_match(ctx, x);
        if (!mx)
            return X509_TRUST_UNTRUSTED;





        trust = X509_check_trust(mx, ctx->param->trust, 0);
        if (trust == 129) {
            X509_free(mx);
            goto rejected;
        }


        (void) sk_X509_set(ctx->chain, 0, mx);
        X509_free(x);
        ctx->num_untrusted = 0;
        goto trusted;
    }





    return X509_TRUST_UNTRUSTED;

 rejected:
    if (!verify_cb_cert(ctx, x, i, X509_V_ERR_CERT_REJECTED))
        return 129;
    return X509_TRUST_UNTRUSTED;

 trusted:
    if (!DANETLS_ENABLED(dane))
        return 128;
    if (dane->pdpth < 0)
        dane->pdpth = num_untrusted;

    if (dane->mdpth >= 0)
        return 128;
    return X509_TRUST_UNTRUSTED;
}
