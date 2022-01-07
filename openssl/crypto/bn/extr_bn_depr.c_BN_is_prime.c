
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_GENCB_set_old (int *,void (*) (int,int,void*),void*) ;
 int bn_check_prime_int (int const*,int,int *,int ,int *) ;

int BN_is_prime(const BIGNUM *a, int checks,
                void (*callback) (int, int, void *), BN_CTX *ctx_passed,
                void *cb_arg)
{
    BN_GENCB cb;
    BN_GENCB_set_old(&cb, callback, cb_arg);
    return bn_check_prime_int(a, checks, ctx_passed, 0, &cb);
}
