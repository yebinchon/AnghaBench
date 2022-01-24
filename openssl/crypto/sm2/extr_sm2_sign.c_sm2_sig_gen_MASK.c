#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  SM2_F_SM2_SIG_GEN ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ECDSA_SIG *FUNC25(const EC_KEY *key, const BIGNUM *e)
{
    const BIGNUM *dA = FUNC18(key);
    const EC_GROUP *group = FUNC17(key);
    const BIGNUM *order = FUNC16(group);
    ECDSA_SIG *sig = NULL;
    EC_POINT *kG = NULL;
    BN_CTX *ctx = NULL;
    BIGNUM *k = NULL;
    BIGNUM *rk = NULL;
    BIGNUM *r = NULL;
    BIGNUM *s = NULL;
    BIGNUM *x1 = NULL;
    BIGNUM *tmp = NULL;

    kG = FUNC22(group);
    ctx = FUNC2();
    if (kG == NULL || ctx == NULL) {
        FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    FUNC3(ctx);
    k = FUNC1(ctx);
    rk = FUNC1(ctx);
    x1 = FUNC1(ctx);
    tmp = FUNC1(ctx);
    if (tmp == NULL) {
        FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    /*
     * These values are returned and so should not be allocated out of the
     * context
     */
    r = FUNC10();
    s = FUNC10();

    if (r == NULL || s == NULL) {
        FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
        goto done;
    }

    for (;;) {
        if (!FUNC11(k, order)) {
            FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_INTERNAL_ERROR);
            goto done;
        }

        if (!FUNC21(group, kG, k, NULL, NULL, ctx)
                || !FUNC20(group, kG, x1, NULL,
                                                    ctx)
                || !FUNC8(r, e, x1, order, ctx)) {
            FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_INTERNAL_ERROR);
            goto done;
        }

        /* try again if r == 0 or r+k == n */
        if (FUNC7(r))
            continue;

        if (!FUNC4(rk, r, k)) {
            FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_INTERNAL_ERROR);
            goto done;
        }

        if (FUNC5(rk, order) == 0)
            continue;

        if (!FUNC4(s, dA, FUNC13())
                || !FUNC24(group, s, s, ctx)
                || !FUNC9(tmp, dA, r, order, ctx)
                || !FUNC12(tmp, k, tmp)
                || !FUNC9(s, s, tmp, order, ctx)) {
            FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_BN_LIB);
            goto done;
        }

        sig = FUNC14();
        if (sig == NULL) {
            FUNC23(SM2_F_SM2_SIG_GEN, ERR_R_MALLOC_FAILURE);
            goto done;
        }

         /* takes ownership of r and s */
        FUNC15(sig, r, s);
        break;
    }

 done:
    if (sig == NULL) {
        FUNC6(r);
        FUNC6(s);
    }

    FUNC0(ctx);
    FUNC19(kG);
    return sig;
}