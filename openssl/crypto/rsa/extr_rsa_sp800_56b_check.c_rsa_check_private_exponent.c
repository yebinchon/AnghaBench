
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; int e; int q; int p; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_clear (int *) ;
 scalar_t__ BN_cmp (int ,int *) ;
 scalar_t__ BN_is_one (int *) ;
 scalar_t__ BN_mod_mul (int *,int ,int ,int *,int *) ;
 int BN_num_bits (int ) ;
 int rsa_get_lcm (int *,int ,int ,int *,int *,int *,int *,int *) ;

int rsa_check_private_exponent(const RSA *rsa, int nbits, BN_CTX *ctx)
{
    int ret;
    BIGNUM *r, *p1, *q1, *lcm, *p1q1, *gcd;


    if (BN_num_bits(rsa->d) <= (nbits >> 1))
        return 0;

    BN_CTX_start(ctx);
    r = BN_CTX_get(ctx);
    p1 = BN_CTX_get(ctx);
    q1 = BN_CTX_get(ctx);
    lcm = BN_CTX_get(ctx);
    p1q1 = BN_CTX_get(ctx);
    gcd = BN_CTX_get(ctx);
    ret = (gcd != ((void*)0)

          && (rsa_get_lcm(ctx, rsa->p, rsa->q, lcm, gcd, p1, q1, p1q1) == 1)

          && (BN_cmp(rsa->d, lcm) < 0)

          && BN_mod_mul(r, rsa->e, rsa->d, lcm, ctx)
          && BN_is_one(r));

    BN_clear(p1);
    BN_clear(q1);
    BN_clear(lcm);
    BN_clear(gcd);
    BN_CTX_end(ctx);
    return ret;
}
