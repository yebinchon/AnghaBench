
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_check_prime (int *,int *,int *) ;
 int BN_clear (int *) ;
 int * BN_copy (int *,int *) ;
 scalar_t__ BN_gcd (int *,int *,int *,int *) ;
 scalar_t__ BN_is_one (int *) ;
 scalar_t__ BN_sub_word (int *,int) ;
 int rsa_check_prime_factor_range (int *,int,int *) ;

int rsa_check_prime_factor(BIGNUM *p, BIGNUM *e, int nbits, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *p1 = ((void*)0), *gcd = ((void*)0);


    if (BN_check_prime(p, ctx, ((void*)0)) != 1

            || rsa_check_prime_factor_range(p, nbits, ctx) != 1)
        return 0;

    BN_CTX_start(ctx);
    p1 = BN_CTX_get(ctx);
    gcd = BN_CTX_get(ctx);
    ret = (gcd != ((void*)0))

          && (BN_copy(p1, p) != ((void*)0))
          && BN_sub_word(p1, 1)
          && BN_gcd(gcd, p1, e, ctx)
          && BN_is_one(gcd);

    BN_clear(p1);
    BN_CTX_end(ctx);
    return ret;
}
