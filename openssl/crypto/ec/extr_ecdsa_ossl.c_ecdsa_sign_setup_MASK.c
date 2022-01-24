#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  libctx; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EC_F_ECDSA_SIGN_SETUP ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ; 
 int /*<<< orphan*/  EC_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  EC_R_RANDOM_NUMBER_GENERATION_FAILED ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(EC_KEY *eckey, BN_CTX *ctx_in,
                            BIGNUM **kinvp, BIGNUM **rp,
                            const unsigned char *dgst, int dlen)
{
    BN_CTX *ctx = NULL;
    BIGNUM *k = NULL, *r = NULL, *X = NULL;
    const BIGNUM *order;
    EC_POINT *tmp_point = NULL;
    const EC_GROUP *group;
    int ret = 0;
    int order_bits;
    const BIGNUM *priv_key;

    if (eckey == NULL || (group = FUNC13(eckey)) == NULL) {
        FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((priv_key = FUNC14(eckey)) == NULL) {
        FUNC19(EC_F_ECDSA_SIGN_SETUP, EC_R_MISSING_PRIVATE_KEY);
        return 0;
    }

    if (!FUNC12(eckey)) {
        FUNC19(EC_F_ECDSA_SIGN_SETUP, EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return 0;
    }

    if ((ctx = ctx_in) == NULL) {
        if ((ctx = FUNC1(eckey->libctx)) == NULL) {
            FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    k = FUNC9();        /* this value is later returned in *kinvp */
    r = FUNC5();               /* this value is later returned in *rp */
    X = FUNC5();
    if (k == NULL || r == NULL || X == NULL) {
        FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if ((tmp_point = FUNC18(group)) == NULL) {
        FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
        goto err;
    }
    order = FUNC11(group);

    /* Preallocate space */
    order_bits = FUNC7(order);
    if (!FUNC10(k, order_bits)
        || !FUNC10(r, order_bits)
        || !FUNC10(X, order_bits))
        goto err;

    do {
        /* get random k */
        do {
            if (dgst != NULL) {
                if (!FUNC3(k, order, priv_key,
                                           dgst, dlen, ctx)) {
                    FUNC19(EC_F_ECDSA_SIGN_SETUP,
                          EC_R_RANDOM_NUMBER_GENERATION_FAILED);
                    goto err;
                }
            } else {
                if (!FUNC8(k, order, ctx)) {
                    FUNC19(EC_F_ECDSA_SIGN_SETUP,
                          EC_R_RANDOM_NUMBER_GENERATION_FAILED);
                    goto err;
                }
            }
        } while (FUNC4(k));

        /* compute r the x-coordinate of generator * k */
        if (!FUNC17(group, tmp_point, k, NULL, NULL, ctx)) {
            FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
            goto err;
        }

        if (!FUNC16(group, tmp_point, X, NULL, ctx)) {
            FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_EC_LIB);
            goto err;
        }

        if (!FUNC6(r, X, order, ctx)) {
            FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_BN_LIB);
            goto err;
        }
    } while (FUNC4(r));

    /* compute the inverse of k */
    if (!FUNC20(group, k, k, ctx)) {
        FUNC19(EC_F_ECDSA_SIGN_SETUP, ERR_R_BN_LIB);
        goto err;
    }

    /* clear old values if necessary */
    FUNC2(*rp);
    FUNC2(*kinvp);
    /* save the pre-computed values  */
    *rp = r;
    *kinvp = k;
    ret = 1;
 err:
    if (!ret) {
        FUNC2(k);
        FUNC2(r);
    }
    if (ctx != ctx_in)
        FUNC0(ctx);
    FUNC15(tmp_point);
    FUNC2(X);
    return ret;
}