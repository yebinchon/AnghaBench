
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int) ;
 int rsa_fips186_4_gen_prob_primes (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int,int *,int *,int *) ;
 int rsa_sp800_56b_derive_params_from_pq (int *,int,int *,int *) ;
 int rsa_sp800_56b_pairwise_test (int *,int *) ;
 int rsa_sp800_56b_validate_strength (int,int) ;

int rsa_sp800_56b_generate_key(RSA *rsa, int nbits, const BIGNUM *efixed,
                               BN_GENCB *cb)
{
    int ret = 0;
    int ok;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *e = ((void*)0);


    if (!rsa_sp800_56b_validate_strength(nbits, -1))
        return 0;

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        return 0;


    if (efixed == ((void*)0)) {
        e = BN_new();
        if (e == ((void*)0) || !BN_set_word(e, 65537))
            goto err;
    } else {
        e = (BIGNUM *)efixed;
    }


    for (;;) {

        if (!rsa_fips186_4_gen_prob_primes(rsa, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), nbits, e, ctx, cb))
            goto err;

        ok = rsa_sp800_56b_derive_params_from_pq(rsa, nbits, e, ctx);
        if (ok < 0)
            goto err;
        if (ok > 0)
            break;

    }


    ret = rsa_sp800_56b_pairwise_test(rsa, ctx);
err:
    if (efixed == ((void*)0))
        BN_free(e);
    BN_CTX_free(ctx);
    return ret;
}
