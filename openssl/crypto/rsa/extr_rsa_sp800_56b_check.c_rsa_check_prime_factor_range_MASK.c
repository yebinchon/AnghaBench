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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  const bn_inv_sqrt_2 ; 

int FUNC8(const BIGNUM *p, int nbits, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *low;
    int shift;

    nbits >>= 1;
    shift = nbits - FUNC6(&bn_inv_sqrt_2);

    /* Upper bound check */
    if (FUNC6(p) != nbits)
        return 0;

    FUNC2(ctx);
    low = FUNC1(ctx);
    if (low == NULL)
        goto err;

    /* set low = (√2)(2^(nbits/2 - 1) */
    if (!FUNC4(low, &bn_inv_sqrt_2))
        goto err;

    if (shift >= 0) {
        /*
         * We don't have all the bits. bn_inv_sqrt_2 contains a rounded up
         * value, so there is a very low probabilty that we'll reject a valid
         * value.
         */
        if (!FUNC5(low, low, shift))
            goto err;
    } else if (!FUNC7(low, low, -shift)) {
        goto err;
    }
    if (FUNC3(p, low) <= 0)
        goto err;
    ret = 1;
err:
    FUNC0(ctx);
    return ret;
}