
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_GENCB_call (int *,int,int) ;
 int BN_add_word (int *,int) ;
 scalar_t__ BN_check_prime (int *,int *,int *) ;
 int * BN_copy (int *,int const*) ;

__attribute__((used)) static int bn_rsa_fips186_4_find_aux_prob_prime(const BIGNUM *Xp1,
                                                BIGNUM *p1, BN_CTX *ctx,
                                                BN_GENCB *cb)
{
    int ret = 0;
    int i = 0;

    if (BN_copy(p1, Xp1) == ((void*)0))
        return 0;


    for(;;) {
        i++;
        BN_GENCB_call(cb, 0, i);

        if (BN_check_prime(p1, ctx, cb))
            break;

        if (!BN_add_word(p1, 2))
            goto err;
    }
    BN_GENCB_call(cb, 2, i);
    ret = 1;
err:
    return ret;
}
