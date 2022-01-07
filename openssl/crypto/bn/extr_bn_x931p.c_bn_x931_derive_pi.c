
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_GENCB_call (int *,int,int) ;
 int BN_add_word (int *,int) ;
 int BN_check_prime (int *,int *,int *) ;
 int BN_copy (int *,int const*) ;
 int BN_is_odd (int *) ;

__attribute__((used)) static int bn_x931_derive_pi(BIGNUM *pi, const BIGNUM *Xpi, BN_CTX *ctx,
                             BN_GENCB *cb)
{
    int i = 0, is_prime;
    if (!BN_copy(pi, Xpi))
        return 0;
    if (!BN_is_odd(pi) && !BN_add_word(pi, 1))
        return 0;
    for (;;) {
        i++;
        BN_GENCB_call(cb, 0, i);

        is_prime = BN_check_prime(pi, ctx, cb);
        if (is_prime < 0)
            return 0;
        if (is_prime)
            break;
        if (!BN_add_word(pi, 2))
            return 0;
    }
    BN_GENCB_call(cb, 2, i);
    return 1;
}
