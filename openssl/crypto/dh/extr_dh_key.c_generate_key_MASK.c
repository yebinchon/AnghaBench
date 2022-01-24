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
struct TYPE_6__ {int flags; int length; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/  p; int /*<<< orphan*/  g; TYPE_1__* meth; int /*<<< orphan*/  q; int /*<<< orphan*/  lock; int /*<<< orphan*/  method_mont_p; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* bn_mod_exp ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ DH ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int DH_FLAG_CACHE_MONT_P ; 
 int /*<<< orphan*/  DH_F_GENERATE_KEY ; 
 int /*<<< orphan*/  DH_GENERATOR_2 ; 
 int DH_MIN_MODULUS_BITS ; 
 int /*<<< orphan*/  DH_R_MODULUS_TOO_LARGE ; 
 int /*<<< orphan*/  DH_R_MODULUS_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int OPENSSL_DH_MAX_MODULUS_BITS ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(DH *dh)
{
    int ok = 0;
    int generate_new_key = 0;
    unsigned l;
    BN_CTX *ctx = NULL;
    BN_MONT_CTX *mont = NULL;
    BIGNUM *pub_key = NULL, *priv_key = NULL;

    if (FUNC11(dh->p) > OPENSSL_DH_MAX_MODULUS_BITS) {
        FUNC16(DH_F_GENERATE_KEY, DH_R_MODULUS_TOO_LARGE);
        return 0;
    }

    if (FUNC11(dh->p) < DH_MIN_MODULUS_BITS) {
        FUNC16(DH_F_GENERATE_KEY, DH_R_MODULUS_TOO_SMALL);
        return 0;
    }

    ctx = FUNC1();
    if (ctx == NULL)
        goto err;

    if (dh->priv_key == NULL) {
        priv_key = FUNC14();
        if (priv_key == NULL)
            goto err;
        generate_new_key = 1;
    } else
        priv_key = dh->priv_key;

    if (dh->pub_key == NULL) {
        pub_key = FUNC10();
        if (pub_key == NULL)
            goto err;
    } else
        pub_key = dh->pub_key;

    if (dh->flags & DH_FLAG_CACHE_MONT_P) {
        mont = FUNC2(&dh->method_mont_p,
                                      dh->lock, dh->p, ctx);
        if (!mont)
            goto err;
    }

    if (generate_new_key) {
        if (dh->q) {
            do {
                if (!FUNC13(priv_key, dh->q))
                    goto err;
            }
            while (FUNC9(priv_key) || FUNC7(priv_key));
        } else {
            /* secret exponent length */
            l = dh->length ? dh->length : FUNC11(dh->p) - 1;
            if (!FUNC12(priv_key, l, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY))
                goto err;
            /*
             * We handle just one known case where g is a quadratic non-residue:
             * for g = 2: p % 8 == 3
             */
            if (FUNC8(dh->g, DH_GENERATOR_2) && !FUNC6(dh->p, 2)) {
                /* clear bit 0, since it won't be a secret anyway */
                if (!FUNC3(priv_key, 0))
                    goto err;
            }
        }
    }

    {
        BIGNUM *prk = FUNC10();

        if (prk == NULL)
            goto err;
        FUNC15(prk, priv_key, BN_FLG_CONSTTIME);

        if (!dh->meth->bn_mod_exp(dh, pub_key, dh->g, prk, dh->p, ctx, mont)) {
            FUNC4(prk);
            goto err;
        }
        /* We MUST free prk before any further use of priv_key */
        FUNC4(prk);
    }

    dh->pub_key = pub_key;
    dh->priv_key = priv_key;
    dh->dirty_cnt++;
    ok = 1;
 err:
    if (ok != 1)
        FUNC16(DH_F_GENERATE_KEY, ERR_R_BN_LIB);

    if (pub_key != dh->pub_key)
        FUNC5(pub_key);
    if (priv_key != dh->priv_key)
        FUNC5(priv_key);
    FUNC0(ctx);
    return ok;
}