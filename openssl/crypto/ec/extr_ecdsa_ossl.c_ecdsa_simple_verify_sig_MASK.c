#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  const* r; int /*<<< orphan*/  const* s; } ;
struct TYPE_8__ {int /*<<< orphan*/  libctx; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_2__ ECDSA_SIG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_F_ECDSA_SIMPLE_VERIFY_SIG ; 
 int /*<<< orphan*/  const* FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EC_R_BAD_SIGNATURE ; 
 int /*<<< orphan*/  EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ; 
 int /*<<< orphan*/  EC_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC23(const unsigned char *dgst, int dgst_len,
                            const ECDSA_SIG *sig, EC_KEY *eckey)
{
    int ret = -1, i;
    BN_CTX *ctx;
    const BIGNUM *order;
    BIGNUM *u1, *u2, *m, *X;
    EC_POINT *point = NULL;
    const EC_GROUP *group;
    const EC_POINT *pub_key;

    /* check input values */
    if (eckey == NULL || (group = FUNC15(eckey)) == NULL ||
        (pub_key = FUNC16(eckey)) == NULL || sig == NULL) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, EC_R_MISSING_PARAMETERS);
        return -1;
    }

    if (!FUNC14(eckey)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return -1;
    }

    ctx = FUNC3(eckey->libctx);
    if (ctx == NULL) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    FUNC4(ctx);
    u1 = FUNC2(ctx);
    u2 = FUNC2(ctx);
    m = FUNC2(ctx);
    X = FUNC2(ctx);
    if (X == NULL) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    order = FUNC13(group);
    if (order == NULL) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_EC_LIB);
        goto err;
    }

    if (FUNC7(sig->r) || FUNC6(sig->r) ||
        FUNC12(sig->r, order) >= 0 || FUNC7(sig->s) ||
        FUNC6(sig->s) || FUNC12(sig->s, order) >= 0) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, EC_R_BAD_SIGNATURE);
        ret = 0;                /* signature is invalid */
        goto err;
    }
    /* calculate tmp1 = inv(S) mod order */
    if (!FUNC22(group, u2, sig->s, ctx)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }
    /* digest -> m */
    i = FUNC10(order);
    /*
     * Need to truncate digest if it is too long: first truncate whole bytes.
     */
    if (8 * dgst_len > i)
        dgst_len = (i + 7) / 8;
    if (!FUNC5(dgst, dgst_len, m)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }
    /* If still too long truncate remaining bits with a shift */
    if ((8 * dgst_len > i) && !FUNC11(m, m, 8 - (i & 0x7))) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }
    /* u1 = m * tmp mod order */
    if (!FUNC8(u1, m, u2, order, ctx)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }
    /* u2 = r * w mod q */
    if (!FUNC8(u2, sig->r, u2, order, ctx)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    if ((point = FUNC20(group)) == NULL) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!FUNC19(group, point, u1, pub_key, u2, ctx)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_EC_LIB);
        goto err;
    }

    if (!FUNC18(group, point, X, NULL, ctx)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_EC_LIB);
        goto err;
    }

    if (!FUNC9(u1, X, order, ctx)) {
        FUNC21(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }
    /*  if the signature is correct u1 is equal to sig->r */
    ret = (FUNC12(u1, sig->r) == 0);
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC17(point);
    return ret;
}