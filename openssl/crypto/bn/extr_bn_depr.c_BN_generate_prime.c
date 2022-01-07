
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BIGNUM ;


 int BN_GENCB_set_old (int *,void (*) (int,int,void*),void*) ;
 int BN_free (int *) ;
 int BN_generate_prime_ex (int *,int,int,int const*,int const*,int *) ;
 int * BN_new () ;

BIGNUM *BN_generate_prime(BIGNUM *ret, int bits, int safe,
                          const BIGNUM *add, const BIGNUM *rem,
                          void (*callback) (int, int, void *), void *cb_arg)
{
    BN_GENCB cb;
    BIGNUM *rnd = ((void*)0);

    BN_GENCB_set_old(&cb, callback, cb_arg);

    if (ret == ((void*)0)) {
        if ((rnd = BN_new()) == ((void*)0))
            goto err;
    } else
        rnd = ret;
    if (!BN_generate_prime_ex(rnd, bits, safe, add, rem, &cb))
        goto err;


    return rnd;
 err:
    BN_free(rnd);
    return ((void*)0);
}
