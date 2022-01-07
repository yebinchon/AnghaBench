
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ version; int * d; int prime_infos; int * iqmp; int * p; int * q; int * dmq1; int * dmp1; int * e; int * n; } ;
struct TYPE_9__ {int * t; int * r; int * pp; int * d; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;
typedef TYPE_2__ RSA ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_check_prime (int *,int *,int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_div (int *,int *,int *,int *,int *) ;
 int BN_free (int *) ;
 int BN_gcd (int *,int *,int *,int *) ;
 int BN_is_odd (int *) ;
 scalar_t__ BN_is_one (int *) ;
 int BN_mod (int *,int *,int *,int *) ;
 int BN_mod_inverse (int *,int *,int *,int *) ;
 int BN_mod_mul (int *,int *,int *,int *,int *) ;
 int BN_mul (int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_sub (int *,int *,int ) ;
 int BN_value_one () ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ RSA_ASN1_VERSION_MULTI ;
 int RSA_F_RSA_CHECK_KEY_EX ;
 int RSA_R_BAD_E_VALUE ;
 int RSA_R_DMP1_NOT_CONGRUENT_TO_D ;
 int RSA_R_DMQ1_NOT_CONGRUENT_TO_D ;
 int RSA_R_D_E_NOT_CONGRUENT_TO_1 ;
 int RSA_R_INVALID_MULTI_PRIME_KEY ;
 int RSA_R_IQMP_NOT_INVERSE_OF_Q ;
 int RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R ;
 int RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D ;
 int RSA_R_MP_R_NOT_PRIME ;
 int RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES ;
 int RSA_R_N_DOES_NOT_EQUAL_P_Q ;
 int RSA_R_P_NOT_PRIME ;
 int RSA_R_Q_NOT_PRIME ;
 int RSA_R_VALUE_MISSING ;
 int RSA_bits (TYPE_2__ const*) ;
 int RSAerr (int ,int ) ;
 int rsa_multip_cap (int ) ;
 scalar_t__ rsa_sp800_56b_check_keypair (TYPE_2__ const*,int *,int,int ) ;
 scalar_t__ rsa_sp800_56b_check_private (TYPE_2__ const*) ;
 scalar_t__ rsa_sp800_56b_check_public (TYPE_2__ const*) ;
 int sk_RSA_PRIME_INFO_num (int ) ;
 TYPE_1__* sk_RSA_PRIME_INFO_value (int ,int) ;

int RSA_check_key_ex(const RSA *key, BN_GENCB *cb)
{





    BIGNUM *i, *j, *k, *l, *m;
    BN_CTX *ctx;
    int ret = 1, ex_primes = 0, idx;
    RSA_PRIME_INFO *pinfo;

    if (key->p == ((void*)0) || key->q == ((void*)0) || key->n == ((void*)0)
            || key->e == ((void*)0) || key->d == ((void*)0)) {
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_VALUE_MISSING);
        return 0;
    }


    if (key->version == RSA_ASN1_VERSION_MULTI) {
        ex_primes = sk_RSA_PRIME_INFO_num(key->prime_infos);
        if (ex_primes <= 0
                || (ex_primes + 2) > rsa_multip_cap(BN_num_bits(key->n))) {
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_INVALID_MULTI_PRIME_KEY);
            return 0;
        }
    }

    i = BN_new();
    j = BN_new();
    k = BN_new();
    l = BN_new();
    m = BN_new();
    ctx = BN_CTX_new();
    if (i == ((void*)0) || j == ((void*)0) || k == ((void*)0) || l == ((void*)0)
            || m == ((void*)0) || ctx == ((void*)0)) {
        ret = -1;
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (BN_is_one(key->e)) {
        ret = 0;
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_BAD_E_VALUE);
    }
    if (!BN_is_odd(key->e)) {
        ret = 0;
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_BAD_E_VALUE);
    }


    if (BN_check_prime(key->p, ((void*)0), cb) != 1) {
        ret = 0;
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_P_NOT_PRIME);
    }


    if (BN_check_prime(key->q, ((void*)0), cb) != 1) {
        ret = 0;
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_Q_NOT_PRIME);
    }


    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = sk_RSA_PRIME_INFO_value(key->prime_infos, idx);
        if (BN_check_prime(pinfo->r, ((void*)0), cb) != 1) {
            ret = 0;
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_MP_R_NOT_PRIME);
        }
    }


    if (!BN_mul(i, key->p, key->q, ctx)) {
        ret = -1;
        goto err;
    }
    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = sk_RSA_PRIME_INFO_value(key->prime_infos, idx);
        if (!BN_mul(i, i, pinfo->r, ctx)) {
            ret = -1;
            goto err;
        }
    }
    if (BN_cmp(i, key->n) != 0) {
        ret = 0;
        if (ex_primes)
            RSAerr(RSA_F_RSA_CHECK_KEY_EX,
                   RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES);
        else
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_N_DOES_NOT_EQUAL_P_Q);
    }


    if (!BN_sub(i, key->p, BN_value_one())) {
        ret = -1;
        goto err;
    }
    if (!BN_sub(j, key->q, BN_value_one())) {
        ret = -1;
        goto err;
    }


    if (!BN_mul(l, i, j, ctx)) {
        ret = -1;
        goto err;
    }
    if (!BN_gcd(m, i, j, ctx)) {
        ret = -1;
        goto err;
    }
    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = sk_RSA_PRIME_INFO_value(key->prime_infos, idx);
        if (!BN_sub(k, pinfo->r, BN_value_one())) {
            ret = -1;
            goto err;
        }
        if (!BN_mul(l, l, k, ctx)) {
            ret = -1;
            goto err;
        }
        if (!BN_gcd(m, m, k, ctx)) {
            ret = -1;
            goto err;
        }
    }
    if (!BN_div(k, ((void*)0), l, m, ctx)) {
        ret = -1;
        goto err;
    }
    if (!BN_mod_mul(i, key->d, key->e, k, ctx)) {
        ret = -1;
        goto err;
    }

    if (!BN_is_one(i)) {
        ret = 0;
        RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_D_E_NOT_CONGRUENT_TO_1);
    }

    if (key->dmp1 != ((void*)0) && key->dmq1 != ((void*)0) && key->iqmp != ((void*)0)) {

        if (!BN_sub(i, key->p, BN_value_one())) {
            ret = -1;
            goto err;
        }
        if (!BN_mod(j, key->d, i, ctx)) {
            ret = -1;
            goto err;
        }
        if (BN_cmp(j, key->dmp1) != 0) {
            ret = 0;
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_DMP1_NOT_CONGRUENT_TO_D);
        }


        if (!BN_sub(i, key->q, BN_value_one())) {
            ret = -1;
            goto err;
        }
        if (!BN_mod(j, key->d, i, ctx)) {
            ret = -1;
            goto err;
        }
        if (BN_cmp(j, key->dmq1) != 0) {
            ret = 0;
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_DMQ1_NOT_CONGRUENT_TO_D);
        }


        if (!BN_mod_inverse(i, key->q, key->p, ctx)) {
            ret = -1;
            goto err;
        }
        if (BN_cmp(i, key->iqmp) != 0) {
            ret = 0;
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_IQMP_NOT_INVERSE_OF_Q);
        }
    }

    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = sk_RSA_PRIME_INFO_value(key->prime_infos, idx);

        if (!BN_sub(i, pinfo->r, BN_value_one())) {
            ret = -1;
            goto err;
        }
        if (!BN_mod(j, key->d, i, ctx)) {
            ret = -1;
            goto err;
        }
        if (BN_cmp(j, pinfo->d) != 0) {
            ret = 0;
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D);
        }

        if (!BN_mod_inverse(i, pinfo->pp, pinfo->r, ctx)) {
            ret = -1;
            goto err;
        }
        if (BN_cmp(i, pinfo->t) != 0) {
            ret = 0;
            RSAerr(RSA_F_RSA_CHECK_KEY_EX, RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R);
        }
    }

 err:
    BN_free(i);
    BN_free(j);
    BN_free(k);
    BN_free(l);
    BN_free(m);
    BN_CTX_free(ctx);
    return ret;

}
