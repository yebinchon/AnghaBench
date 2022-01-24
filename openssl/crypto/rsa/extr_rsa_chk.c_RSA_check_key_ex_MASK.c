#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ version; int /*<<< orphan*/ * d; int /*<<< orphan*/  prime_infos; int /*<<< orphan*/ * iqmp; int /*<<< orphan*/ * p; int /*<<< orphan*/ * q; int /*<<< orphan*/ * dmq1; int /*<<< orphan*/ * dmp1; int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; } ;
struct TYPE_9__ {int /*<<< orphan*/ * t; int /*<<< orphan*/ * r; int /*<<< orphan*/ * pp; int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__ RSA_PRIME_INFO ;
typedef  TYPE_2__ RSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ RSA_ASN1_VERSION_MULTI ; 
 int /*<<< orphan*/  RSA_F_RSA_CHECK_KEY_EX ; 
 int /*<<< orphan*/  RSA_R_BAD_E_VALUE ; 
 int /*<<< orphan*/  RSA_R_DMP1_NOT_CONGRUENT_TO_D ; 
 int /*<<< orphan*/  RSA_R_DMQ1_NOT_CONGRUENT_TO_D ; 
 int /*<<< orphan*/  RSA_R_D_E_NOT_CONGRUENT_TO_1 ; 
 int /*<<< orphan*/  RSA_R_INVALID_MULTI_PRIME_KEY ; 
 int /*<<< orphan*/  RSA_R_IQMP_NOT_INVERSE_OF_Q ; 
 int /*<<< orphan*/  RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R ; 
 int /*<<< orphan*/  RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D ; 
 int /*<<< orphan*/  RSA_R_MP_R_NOT_PRIME ; 
 int /*<<< orphan*/  RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES ; 
 int /*<<< orphan*/  RSA_R_N_DOES_NOT_EQUAL_P_Q ; 
 int /*<<< orphan*/  RSA_R_P_NOT_PRIME ; 
 int /*<<< orphan*/  RSA_R_Q_NOT_PRIME ; 
 int /*<<< orphan*/  RSA_R_VALUE_MISSING ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_2__ const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_2__ const*) ; 
 scalar_t__ FUNC22 (TYPE_2__ const*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC24 (int /*<<< orphan*/ ,int) ; 

int FUNC25(const RSA *key, BN_GENCB *cb)
{
#ifdef FIPS_MODE
    return rsa_sp800_56b_check_public(key)
               && rsa_sp800_56b_check_private(key)
               && rsa_sp800_56b_check_keypair(key, NULL, -1, RSA_bits(key));
#else
    BIGNUM *i, *j, *k, *l, *m;
    BN_CTX *ctx;
    int ret = 1, ex_primes = 0, idx;
    RSA_PRIME_INFO *pinfo;

    if (key->p == NULL || key->q == NULL || key->n == NULL
            || key->e == NULL || key->d == NULL) {
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_VALUE_MISSING);
        return 0;
    }

    /* multi-prime? */
    if (key->version == RSA_ASN1_VERSION_MULTI) {
        ex_primes = FUNC23(key->prime_infos);
        if (ex_primes <= 0
                || (ex_primes + 2) > FUNC19(FUNC14(key->n))) {
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_INVALID_MULTI_PRIME_KEY);
            return 0;
        }
    }

    i = FUNC13();
    j = FUNC13();
    k = FUNC13();
    l = FUNC13();
    m = FUNC13();
    ctx = FUNC1();
    if (i == NULL || j == NULL || k == NULL || l == NULL
            || m == NULL || ctx == NULL) {
        ret = -1;
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC8(key->e)) {
        ret = 0;
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_BAD_E_VALUE);
    }
    if (!FUNC7(key->e)) {
        ret = 0;
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_BAD_E_VALUE);
    }

    /* p prime? */
    if (FUNC2(key->p, NULL, cb) != 1) {
        ret = 0;
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_P_NOT_PRIME);
    }

    /* q prime? */
    if (FUNC2(key->q, NULL, cb) != 1) {
        ret = 0;
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_Q_NOT_PRIME);
    }

    /* r_i prime? */
    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = FUNC24(key->prime_infos, idx);
        if (FUNC2(pinfo->r, NULL, cb) != 1) {
            ret = 0;
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_MP_R_NOT_PRIME);
        }
    }

    /* n = p*q * r_3...r_i? */
    if (!FUNC12(i, key->p, key->q, ctx)) {
        ret = -1;
        goto err;
    }
    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = FUNC24(key->prime_infos, idx);
        if (!FUNC12(i, i, pinfo->r, ctx)) {
            ret = -1;
            goto err;
        }
    }
    if (FUNC3(i, key->n) != 0) {
        ret = 0;
        if (ex_primes)
            FUNC18(RSA_F_RSA_CHECK_KEY_EX,
                   RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES);
        else
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_N_DOES_NOT_EQUAL_P_Q);
    }

    /* d*e = 1  mod \lambda(n)? */
    if (!FUNC15(i, key->p, FUNC16())) {
        ret = -1;
        goto err;
    }
    if (!FUNC15(j, key->q, FUNC16())) {
        ret = -1;
        goto err;
    }

    /* now compute k = \lambda(n) = LCM(i, j, r_3 - 1...) */
    if (!FUNC12(l, i, j, ctx)) {
        ret = -1;
        goto err;
    }
    if (!FUNC6(m, i, j, ctx)) {
        ret = -1;
        goto err;
    }
    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = FUNC24(key->prime_infos, idx);
        if (!FUNC15(k, pinfo->r, FUNC16())) {
            ret = -1;
            goto err;
        }
        if (!FUNC12(l, l, k, ctx)) {
            ret = -1;
            goto err;
        }
        if (!FUNC6(m, m, k, ctx)) {
            ret = -1;
            goto err;
        }
    }
    if (!FUNC4(k, NULL, l, m, ctx)) { /* remainder is 0 */
        ret = -1;
        goto err;
    }
    if (!FUNC11(i, key->d, key->e, k, ctx)) {
        ret = -1;
        goto err;
    }

    if (!FUNC8(i)) {
        ret = 0;
        FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_D_E_NOT_CONGRUENT_TO_1);
    }

    if (key->dmp1 != NULL && key->dmq1 != NULL && key->iqmp != NULL) {
        /* dmp1 = d mod (p-1)? */
        if (!FUNC15(i, key->p, FUNC16())) {
            ret = -1;
            goto err;
        }
        if (!FUNC9(j, key->d, i, ctx)) {
            ret = -1;
            goto err;
        }
        if (FUNC3(j, key->dmp1) != 0) {
            ret = 0;
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_DMP1_NOT_CONGRUENT_TO_D);
        }

        /* dmq1 = d mod (q-1)? */
        if (!FUNC15(i, key->q, FUNC16())) {
            ret = -1;
            goto err;
        }
        if (!FUNC9(j, key->d, i, ctx)) {
            ret = -1;
            goto err;
        }
        if (FUNC3(j, key->dmq1) != 0) {
            ret = 0;
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_DMQ1_NOT_CONGRUENT_TO_D);
        }

        /* iqmp = q^-1 mod p? */
        if (!FUNC10(i, key->q, key->p, ctx)) {
            ret = -1;
            goto err;
        }
        if (FUNC3(i, key->iqmp) != 0) {
            ret = 0;
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_IQMP_NOT_INVERSE_OF_Q);
        }
    }

    for (idx = 0; idx < ex_primes; idx++) {
        pinfo = FUNC24(key->prime_infos, idx);
        /* d_i = d mod (r_i - 1)? */
        if (!FUNC15(i, pinfo->r, FUNC16())) {
            ret = -1;
            goto err;
        }
        if (!FUNC9(j, key->d, i, ctx)) {
            ret = -1;
            goto err;
        }
        if (FUNC3(j, pinfo->d) != 0) {
            ret = 0;
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D);
        }
        /* t_i = R_i ^ -1 mod r_i ? */
        if (!FUNC10(i, pinfo->pp, pinfo->r, ctx)) {
            ret = -1;
            goto err;
        }
        if (FUNC3(i, pinfo->t) != 0) {
            ret = 0;
            FUNC18(RSA_F_RSA_CHECK_KEY_EX, RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R);
        }
    }

 err:
    FUNC5(i);
    FUNC5(j);
    FUNC5(k);
    FUNC5(l);
    FUNC5(m);
    FUNC0(ctx);
    return ret;
#endif /* FIPS_MODE */
}