#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; int /*<<< orphan*/ * e; int /*<<< orphan*/  const* n; int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  RSA_F_RSA_SP800_56B_CHECK_KEYPAIR ; 
 int /*<<< orphan*/  RSA_R_INVALID_KEYPAIR ; 
 int /*<<< orphan*/  RSA_R_INVALID_REQUEST ; 
 int /*<<< orphan*/  RSA_R_PUB_EXPONENT_OUT_OF_RANGE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_1__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

int FUNC16(const RSA *rsa, const BIGNUM *efixed,
                                int strength, int nbits)
{
    int ret = 0;
    BN_CTX *ctx = NULL;
    BIGNUM *r = NULL;

    if (rsa->p == NULL
            || rsa->q == NULL
            || rsa->e == NULL
            || rsa->d == NULL
            || rsa->n == NULL) {
        FUNC9(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_REQUEST);
        return 0;
    }
    /* (Step 1): Check Ranges */
    if (!FUNC15(nbits, strength))
        return 0;

    /* If the exponent is known */
    if (efixed != NULL) {
        /* (2): Check fixed exponent matches public exponent. */
        if (FUNC6(efixed, rsa->e) != 0) {
            FUNC9(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_REQUEST);
            return 0;
        }
    }
    /* (Step 1.c): e is odd integer 65537 <= e < 2^256 */
    if (!FUNC14(rsa->e)) {
        /* exponent out of range */
        FUNC9(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR,
               RSA_R_PUB_EXPONENT_OUT_OF_RANGE);
        return 0;
    }
    /* (Step 3.b): check the modulus */
    if (nbits != FUNC8(rsa->n)) {
        FUNC9(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_KEYPAIR);
        return 0;
    }

    ctx = FUNC3();
    if (ctx == NULL)
        return 0;

    FUNC4(ctx);
    r = FUNC2(ctx);
    if (r == NULL || !FUNC7(r, rsa->p, rsa->q, ctx))
        goto err;
    /* (Step 4.c): Check n = pq */
    if (FUNC6(rsa->n, r) != 0) {
        FUNC9(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_REQUEST);
        goto err;
    }

    /* (Step 5): check prime factors p & q */
    ret = FUNC12(rsa->p, rsa->e, nbits, ctx)
          && FUNC12(rsa->q, rsa->e, nbits, ctx)
          && (FUNC11(r, rsa->p, rsa->q, nbits) > 0)
          /* (Step 6): Check the private exponent d */
          && FUNC13(rsa, nbits, ctx)
          /* 6.4.1.2.3 (Step 7): Check the CRT components */
          && FUNC10(rsa, ctx);
    if (ret != 1)
        FUNC9(RSA_F_RSA_SP800_56B_CHECK_KEYPAIR, RSA_R_INVALID_KEYPAIR);

err:
    FUNC5(r);
    FUNC0(ctx);
    FUNC1(ctx);
    return ret;
}