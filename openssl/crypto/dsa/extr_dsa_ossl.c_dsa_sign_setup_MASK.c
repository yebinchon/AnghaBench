#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/ * q; int /*<<< orphan*/  method_mont_p; int /*<<< orphan*/ * p; int /*<<< orphan*/ * g; TYPE_1__* meth; int /*<<< orphan*/  lock; int /*<<< orphan*/ * priv_key; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* bn_mod_exp ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ DSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int DSA_FLAG_CACHE_MONT_P ; 
 int /*<<< orphan*/  DSA_F_DSA_SIGN_SETUP ; 
 int /*<<< orphan*/  DSA_R_INVALID_PARAMETERS ; 
 int /*<<< orphan*/  DSA_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  DSA_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(DSA *dsa, BN_CTX *ctx_in,
                          BIGNUM **kinvp, BIGNUM **rp,
                          const unsigned char *dgst, int dlen)
{
    BN_CTX *ctx = NULL;
    BIGNUM *k, *kinv = NULL, *r = *rp;
    BIGNUM *l;
    int ret = 0;
    int q_bits, q_words;

    if (!dsa->p || !dsa->q || !dsa->g) {
        FUNC15(DSA_F_DSA_SIGN_SETUP, DSA_R_MISSING_PARAMETERS);
        return 0;
    }

    /* Reject obviously invalid parameters */
    if (FUNC8(dsa->p) || FUNC8(dsa->q) || FUNC8(dsa->g)) {
        FUNC15(DSA_F_DSA_SIGN_SETUP, DSA_R_INVALID_PARAMETERS);
        return 0;
    }
    if (dsa->priv_key == NULL) {
        FUNC15(DSA_F_DSA_SIGN_SETUP, DSA_R_MISSING_PRIVATE_KEY);
        return 0;
    }

    k = FUNC11();
    l = FUNC11();
    if (k == NULL || l == NULL)
        goto err;

    if (ctx_in == NULL) {
        if ((ctx = FUNC1()) == NULL)
            goto err;
    } else
        ctx = ctx_in;

    /* Preallocate space */
    q_bits = FUNC12(dsa->q);
    q_words = FUNC16(dsa->q);
    if (!FUNC17(k, q_words + 2)
        || !FUNC17(l, q_words + 2))
        goto err;

    /* Get random k */
    do {
        if (dgst != NULL) {
            /*
             * We calculate k from SHA512(private_key + H(message) + random).
             * This protects the private key from a weak PRNG.
             */
            if (!FUNC6(k, dsa->q, dsa->priv_key, dgst,
                                       dlen, ctx))
                goto err;
        } else if (!FUNC13(k, dsa->q))
            goto err;
    } while (FUNC8(k));

    FUNC14(k, BN_FLG_CONSTTIME);
    FUNC14(l, BN_FLG_CONSTTIME);

    if (dsa->flags & DSA_FLAG_CACHE_MONT_P) {
        if (!FUNC2(&dsa->method_mont_p,
                                    dsa->lock, dsa->p, ctx))
            goto err;
    }

    /* Compute r = (g^k mod p) mod q */

    /*
     * We do not want timing information to leak the length of k, so we
     * compute G^k using an equivalent scalar of fixed bit-length.
     *
     * We unconditionally perform both of these additions to prevent a
     * small timing information leakage.  We then choose the sum that is
     * one bit longer than the modulus.
     *
     * There are some concerns about the efficacy of doing this.  More
     * specifically refer to the discussion starting with:
     *     https://github.com/openssl/openssl/pull/7486#discussion_r228323705
     * The fix is to rework BN so these gymnastics aren't required.
     */
    if (!FUNC3(l, k, dsa->q)
        || !FUNC3(k, l, dsa->q))
        goto err;

    FUNC5(FUNC7(l, q_bits), k, l, q_words + 2);

    if ((dsa)->meth->bn_mod_exp != NULL) {
            if (!dsa->meth->bn_mod_exp(dsa, r, dsa->g, k, dsa->p, ctx,
                                       dsa->method_mont_p))
                goto err;
    } else {
            if (!FUNC10(r, dsa->g, k, dsa->p, ctx, dsa->method_mont_p))
                goto err;
    }

    if (!FUNC9(r, r, dsa->q, ctx))
        goto err;

    /* Compute part of 's = inv(k) (m + xr) mod q' */
    if ((kinv = FUNC18(k, dsa->q, ctx)) == NULL)
        goto err;

    FUNC4(*kinvp);
    *kinvp = kinv;
    kinv = NULL;
    ret = 1;
 err:
    if (!ret)
        FUNC15(DSA_F_DSA_SIGN_SETUP, ERR_R_BN_LIB);
    if (ctx != ctx_in)
        FUNC0(ctx);
    FUNC4(k);
    FUNC4(l);
    return ret;
}