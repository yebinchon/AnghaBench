
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_untrusted; int chain; int * dane; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int X509 ;
typedef int SSL_DANE ;


 int DANETLS_HAS_TA (int *) ;
 int X509_TRUST_REJECTED ;
 int X509_TRUST_TRUSTED ;
 int X509_TRUST_UNTRUSTED ;
 int dane_match (TYPE_1__*,int *,int) ;
 int * sk_X509_value (int ,int) ;

__attribute__((used)) static int check_dane_issuer(X509_STORE_CTX *ctx, int depth)
{
    SSL_DANE *dane = ctx->dane;
    int matched = 0;
    X509 *cert;

    if (!DANETLS_HAS_TA(dane) || depth == 0)
        return X509_TRUST_UNTRUSTED;






    cert = sk_X509_value(ctx->chain, depth);
    if (cert != ((void*)0) && (matched = dane_match(ctx, cert, depth)) < 0)
        return X509_TRUST_REJECTED;
    if (matched > 0) {
        ctx->num_untrusted = depth - 1;
        return X509_TRUST_TRUSTED;
    }

    return X509_TRUST_UNTRUSTED;
}
