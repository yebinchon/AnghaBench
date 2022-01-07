
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ usage; scalar_t__ selector; scalar_t__ mtype; int spki; } ;
typedef TYPE_1__ danetls_record ;
struct TYPE_7__ {int num_untrusted; int bare_ta_signed; int chain; TYPE_3__* dane; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_8__ {int mdpth; TYPE_1__* mtlsa; int * mcert; int trecs; } ;
typedef TYPE_3__ SSL_DANE ;


 scalar_t__ DANETLS_MATCHING_FULL ;
 scalar_t__ DANETLS_SELECTOR_SPKI ;
 scalar_t__ DANETLS_USAGE_DANE_TA ;
 int X509_TRUST_TRUSTED ;
 int X509_TRUST_UNTRUSTED ;
 int X509_free (int *) ;
 scalar_t__ X509_verify (int *,int ) ;
 int sk_X509_num (int ) ;
 int * sk_X509_pop (int ) ;
 int * sk_X509_value (int ,int) ;
 int sk_danetls_record_num (int ) ;
 TYPE_1__* sk_danetls_record_value (int ,int) ;

__attribute__((used)) static int check_dane_pkeys(X509_STORE_CTX *ctx)
{
    SSL_DANE *dane = ctx->dane;
    danetls_record *t;
    int num = ctx->num_untrusted;
    X509 *cert = sk_X509_value(ctx->chain, num - 1);
    int recnum = sk_danetls_record_num(dane->trecs);
    int i;

    for (i = 0; i < recnum; ++i) {
        t = sk_danetls_record_value(dane->trecs, i);
        if (t->usage != DANETLS_USAGE_DANE_TA ||
            t->selector != DANETLS_SELECTOR_SPKI ||
            t->mtype != DANETLS_MATCHING_FULL ||
            X509_verify(cert, t->spki) <= 0)
            continue;


        X509_free(dane->mcert);
        dane->mcert = ((void*)0);


        ctx->bare_ta_signed = 1;
        dane->mdpth = num - 1;
        dane->mtlsa = t;


        num = sk_X509_num(ctx->chain);
        for (; num > ctx->num_untrusted; --num)
            X509_free(sk_X509_pop(ctx->chain));

        return X509_TRUST_TRUSTED;
    }

    return X509_TRUST_UNTRUSTED;
}
