#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * order; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pub_key; TYPE_4__* group; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/  libctx; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  EC_F_EC_KEY_SIMPLE_CHECK_KEY ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  EC_R_COORDINATES_OUT_OF_RANGE ; 
 int /*<<< orphan*/  EC_R_INVALID_GROUP_ORDER ; 
 int /*<<< orphan*/  EC_R_INVALID_PRIVATE_KEY ; 
 int /*<<< orphan*/  EC_R_POINT_AT_INFINITY ; 
 int /*<<< orphan*/  EC_R_POINT_IS_NOT_ON_CURVE ; 
 int /*<<< orphan*/  EC_R_WRONG_ORDER ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 

int FUNC13(const EC_KEY *eckey)
{
    int ok = 0;
    BN_CTX *ctx = NULL;
    const BIGNUM *order = NULL;
    EC_POINT *point = NULL;

    if (eckey == NULL || eckey->group == NULL || eckey->pub_key == NULL) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    /* 5.6.2.3.3 (Step 1): Q != infinity */
    if (FUNC7(eckey->group, eckey->pub_key)) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_POINT_AT_INFINITY);
        goto err;
    }

    if ((ctx = FUNC1(eckey->libctx)) == NULL)
        goto err;

    if ((point = FUNC10(eckey->group)) == NULL)
        goto err;

    /* 5.6.2.3.3 (Step 2) Test if the public key is in range */
    if (!FUNC12(ctx, eckey)) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_COORDINATES_OUT_OF_RANGE);
        goto err;
    }

    /* 5.6.2.3.3 (Step 3) is the pub_key on the elliptic curve */
    if (FUNC8(eckey->group, eckey->pub_key, ctx) <= 0) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_POINT_IS_NOT_ON_CURVE);
        goto err;
    }

    order = eckey->group->order;
    if (FUNC3(order)) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_INVALID_GROUP_ORDER);
        goto err;
    }
    /* 5.6.2.3.3 (Step 4) : pub_key * order is the point at infinity. */
    if (!FUNC9(eckey->group, point, NULL, eckey->pub_key, order, ctx)) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, ERR_R_EC_LIB);
        goto err;
    }
    if (!FUNC7(eckey->group, point)) {
        FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_WRONG_ORDER);
        goto err;
    }

    if (eckey->priv_key != NULL) {
        /*
         * 5.6.2.1.2 Owner Assurance of Private-Key Validity
         * The private key is in the range [1, order-1]
         */
        if (FUNC2(eckey->priv_key, FUNC4()) < 0
                || FUNC2(eckey->priv_key, order) >= 0) {
            FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_WRONG_ORDER);
            goto err;
        }
        /*
         * Section 5.6.2.1.4 Owner Assurance of Pair-wise Consistency (b)
         * Check if generator * priv_key = pub_key
         */
        if (!FUNC9(eckey->group, point, eckey->priv_key,
                          NULL, NULL, ctx)) {
            FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, ERR_R_EC_LIB);
            goto err;
        }
        if (FUNC5(eckey->group, point, eckey->pub_key, ctx) != 0) {
            FUNC11(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_INVALID_PRIVATE_KEY);
            goto err;
        }
    }
    ok = 1;
 err:
    FUNC0(ctx);
    FUNC6(point);
    return ok;
}