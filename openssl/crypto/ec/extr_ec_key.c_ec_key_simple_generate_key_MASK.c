#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * pub_key; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/  libctx; int /*<<< orphan*/ * group; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC12(EC_KEY *eckey)
{
    int ok = 0;
    BIGNUM *priv_key = NULL;
    const BIGNUM *order = NULL;
    EC_POINT *pub_key = NULL;
    const EC_GROUP *group = eckey->group;
    BN_CTX *ctx = FUNC1(eckey->libctx);

    if (ctx == NULL)
        goto err;

    if (eckey->priv_key == NULL) {
        priv_key = FUNC6();
        if (priv_key == NULL)
            goto err;
    } else
        priv_key = eckey->priv_key;

    /*
     * Steps (1-2): Check domain parameters and security strength.
     * These steps must be done by the user. This would need to be
     * stated in the security policy.
     */

    order = FUNC7(group);
    if (order == NULL)
        goto err;

    /*
     * Steps (3-7): priv_key = DRBG_RAND(order_n_bits) (range [1, n-1]).
     * Although this is slightly different from the standard, it is effectively
     * equivalent as it gives an unbiased result ranging from 1..n-1. It is also
     * faster as the standard needs to retry more often. Also doing
     * 1 + rand[0..n-2] would effect the way that tests feed dummy entropy into
     * rand so the simpler backward compatible method has been used here.
     */
    do
        if (!FUNC5(priv_key, order, ctx))
            goto err;
    while (FUNC4(priv_key)) ;

    if (eckey->pub_key == NULL) {
        pub_key = FUNC10(group);
        if (pub_key == NULL)
            goto err;
    } else
        pub_key = eckey->pub_key;

    /* Step (8) : pub_key = priv_key * G (where G is a point on the curve) */
    if (!FUNC9(group, pub_key, priv_key, NULL, NULL, ctx))
        goto err;

    eckey->priv_key = priv_key;
    eckey->pub_key = pub_key;
    priv_key = NULL;
    pub_key = NULL;

    ok = 1;

err:
    /* Step (9): If there is an error return an invalid keypair. */
    if (!ok) {
        FUNC2(eckey->priv_key);
        if (eckey->pub_key != NULL)
            FUNC11(group, eckey->pub_key);
    }

    FUNC8(pub_key);
    FUNC3(priv_key);
    FUNC0(ctx);
    return ok;
}