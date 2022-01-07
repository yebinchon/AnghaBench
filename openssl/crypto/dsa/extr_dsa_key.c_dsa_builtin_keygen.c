
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int * pub_key; int dirty_cnt; int p; int g; int q; } ;
typedef TYPE_1__ DSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_exp (int *,int ,int *,int ,int *) ;
 int * BN_new () ;
 int BN_priv_rand_range (int *,int ) ;
 int * BN_secure_new () ;
 int BN_with_flags (int *,int *,int ) ;

__attribute__((used)) static int dsa_builtin_keygen(DSA *dsa)
{
    int ok = 0;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *pub_key = ((void*)0), *priv_key = ((void*)0);

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;

    if (dsa->priv_key == ((void*)0)) {
        if ((priv_key = BN_secure_new()) == ((void*)0))
            goto err;
    } else
        priv_key = dsa->priv_key;

    do
        if (!BN_priv_rand_range(priv_key, dsa->q))
            goto err;
    while (BN_is_zero(priv_key)) ;

    if (dsa->pub_key == ((void*)0)) {
        if ((pub_key = BN_new()) == ((void*)0))
            goto err;
    } else
        pub_key = dsa->pub_key;

    {
        BIGNUM *prk = BN_new();

        if (prk == ((void*)0))
            goto err;
        BN_with_flags(prk, priv_key, BN_FLG_CONSTTIME);

        if (!BN_mod_exp(pub_key, dsa->g, prk, dsa->p, ctx)) {
            BN_free(prk);
            goto err;
        }

        BN_free(prk);
    }

    dsa->priv_key = priv_key;
    dsa->pub_key = pub_key;
    dsa->dirty_cnt++;
    ok = 1;

 err:
    if (pub_key != dsa->pub_key)
        BN_free(pub_key);
    if (priv_key != dsa->priv_key)
        BN_free(priv_key);
    BN_CTX_free(ctx);
    return ok;
}
