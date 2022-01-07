
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_generate_prime_ex2 (int *,int,int,int const*,int const*,int *,int *) ;

int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe,
                         const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb)
{
    BN_CTX *ctx = BN_CTX_new();
    int retval;

    if (ctx == ((void*)0))
        return 0;

    retval = BN_generate_prime_ex2(ret, bits, safe, add, rem, cb, ctx);

    BN_CTX_free(ctx);
    return retval;
}
