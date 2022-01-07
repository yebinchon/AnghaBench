
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * q; int * p; int * e; int const* n; int * d; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_clear (int *) ;
 scalar_t__ BN_cmp (int const*,int *) ;
 int BN_mul (int *,int *,int *,int *) ;
 int BN_num_bits (int const*) ;
 int RSA_F_RSA_SP800_56B_CHECK_KEYPAIR ;
 int RSA_R_INVALID_KEYPAIR ;
 int RSA_R_INVALID_REQUEST ;
 int RSA_R_PUB_EXPONENT_OUT_OF_RANGE ;
 int RSAerr (int ,int ) ;
 scalar_t__ rsa_check_crt_components (TYPE_1__ const*,int *) ;
 scalar_t__ rsa_check_pminusq_diff (int *,int *,int *,int) ;
 scalar_t__ rsa_check_prime_factor (int *,int *,int,int *) ;
 scalar_t__ rsa_check_private_exponent (TYPE_1__ const*,int,int *) ;
 int rsa_check_public_exponent (int *) ;
 int rsa_sp800_56b_validate_strength (int,int) ;

int rsa_sp800_56b_check_keypair(const RSA *rsa, const BIGNUM *efixed,
                                int strength, int nbits)
{
    int ret = 0;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *r = ((void*)0);

    if (rsa->p == ((void*)0)
            || rsa->q == ((void*)0)
            || rsa->e == ((void*)0)
            || rsa->d == ((void*)0)
            || rsa->n == ((void*)0)) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_REQUEST);
        return 0;
    }

    if (!rsa_sp800_56b_validate_strength(nbits, strength))
        return 0;


    if (efixed != ((void*)0)) {

        if (BN_cmp(efixed, rsa->e) != 0) {
            RSAerr(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_REQUEST);
            return 0;
        }
    }

    if (!rsa_check_public_exponent(rsa->e)) {

        RSAerr(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR,
               RSA_R_PUB_EXPONENT_OUT_OF_RANGE);
        return 0;
    }

    if (nbits != BN_num_bits(rsa->n)) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_KEYPAIR);
        return 0;
    }

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        return 0;

    BN_CTX_start(ctx);
    r = BN_CTX_get(ctx);
    if (r == ((void*)0) || !BN_mul(r, rsa->p, rsa->q, ctx))
        goto err;

    if (BN_cmp(rsa->n, r) != 0) {
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_REQUEST);
        goto err;
    }


    ret = rsa_check_prime_factor(rsa->p, rsa->e, nbits, ctx)
          && rsa_check_prime_factor(rsa->q, rsa->e, nbits, ctx)
          && (rsa_check_pminusq_diff(r, rsa->p, rsa->q, nbits) > 0)

          && rsa_check_private_exponent(rsa, nbits, ctx)

          && rsa_check_crt_components(rsa, ctx);
    if (ret != 1)
        RSAerr(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_KEYPAIR);

err:
    BN_clear(r);
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ret;
}
