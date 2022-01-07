
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * n; int * e; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME ;
 int BN_free (int *) ;
 int BN_gcd (int *,int *,int ,int *) ;
 int BN_is_odd (int *) ;
 int BN_is_one (int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int RSA_F_RSA_SP800_56B_CHECK_PUBLIC ;
 int RSA_R_INVALID_KEY_LENGTH ;
 int RSA_R_INVALID_MODULUS ;
 int RSA_R_PUB_EXPONENT_OUT_OF_RANGE ;
 int RSAerr (int ,int ) ;
 int bn_get0_small_factors () ;
 int bn_miller_rabin_is_prime (int *,int ,int *,int *,int,int*) ;
 int rsa_check_public_exponent (int *) ;
 int rsa_sp800_56b_validate_strength (int,int) ;

int rsa_sp800_56b_check_public(const RSA *rsa)
{
    int ret = 0, nbits, status;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *gcd = ((void*)0);

    if (rsa->n == ((void*)0) || rsa->e == ((void*)0))
        return 0;





    nbits = BN_num_bits(rsa->n);
    if (!rsa_sp800_56b_validate_strength(nbits, -1)) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_KEY_LENGTH);
        return 0;
    }
    if (!BN_is_odd(rsa->n)) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_MODULUS);
        return 0;
    }


    if (!rsa_check_public_exponent(rsa->e)) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_PUBLIC,
               RSA_R_PUB_EXPONENT_OUT_OF_RANGE);
        return 0;
    }

    ctx = BN_CTX_new();
    gcd = BN_new();
    if (ctx == ((void*)0) || gcd == ((void*)0))
        goto err;





    if (!BN_gcd(gcd, rsa->n, bn_get0_small_factors(), ctx) || !BN_is_one(gcd)) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_MODULUS);
        goto err;
    }

    ret = bn_miller_rabin_is_prime(rsa->n, 0, ctx, ((void*)0), 1, &status);
    if (ret != 1 || status != BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_MODULUS);
        ret = 0;
        goto err;
    }

    ret = 1;
err:
    BN_free(gcd);
    BN_CTX_free(ctx);
    return ret;
}
