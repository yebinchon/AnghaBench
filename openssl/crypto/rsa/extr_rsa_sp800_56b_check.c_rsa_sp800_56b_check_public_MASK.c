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
struct TYPE_3__ {int /*<<< orphan*/ * n; int /*<<< orphan*/ * e; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_F_RSA_SP800_56B_CHECK_PUBLIC ; 
 int /*<<< orphan*/  RSA_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  RSA_R_INVALID_MODULUS ; 
 int /*<<< orphan*/  RSA_R_PUB_EXPONENT_OUT_OF_RANGE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

int FUNC13(const RSA *rsa)
{
    int ret = 0, nbits, status;
    BN_CTX *ctx = NULL;
    BIGNUM *gcd = NULL;

    if (rsa->n == NULL || rsa->e == NULL)
        return 0;

    /*
     * (Step a): modulus must be 2048 or 3072 (caveat from SP800-56Br1)
     * NOTE: changed to allow keys >= 2048
     */
    nbits = FUNC7(rsa->n);
    if (!FUNC12(nbits, -1)) {
        FUNC8(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_KEY_LENGTH);
        return 0;
    }
    if (!FUNC4(rsa->n)) {
        FUNC8(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_MODULUS);
        return 0;
    }

    /* (Steps b-c): 2^16 < e < 2^256, n and e must be odd */
    if (!FUNC11(rsa->e)) {
        FUNC8(RSA_F_RSA_SP800_56B_CHECK_PUBLIC,
               RSA_R_PUB_EXPONENT_OUT_OF_RANGE);
        return 0;
    }

    ctx = FUNC1();
    gcd = FUNC6();
    if (ctx == NULL || gcd == NULL)
        goto err;

    /* (Steps d-f):
     * The modulus is composite, but not a power of a prime.
     * The modulus has no factors smaller than 752.
     */
    if (!FUNC3(gcd, rsa->n, FUNC9(), ctx) || !FUNC5(gcd)) {
        FUNC8(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_MODULUS);
        goto err;
    }

    ret = FUNC10(rsa->n, 0, ctx, NULL, 1, &status);
    if (ret != 1 || status != BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME) {
        FUNC8(RSA_F_RSA_SP800_56B_CHECK_PUBLIC, RSA_R_INVALID_MODULUS);
        ret = 0;
        goto err;
    }

    ret = 1;
err:
    FUNC2(gcd);
    FUNC0(ctx);
    return ret;
}