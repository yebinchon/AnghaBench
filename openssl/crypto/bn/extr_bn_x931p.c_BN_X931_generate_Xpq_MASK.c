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
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_TWO ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(BIGNUM *Xp, BIGNUM *Xq, int nbits, BN_CTX *ctx)
{
    BIGNUM *t;
    int i;
    /*
     * Number of bits for each prime is of the form 512+128s for s = 0, 1,
     * ...
     */
    if ((nbits < 1024) || (nbits & 0xff))
        return 0;
    nbits >>= 1;
    /*
     * The random value Xp must be between sqrt(2) * 2^(nbits-1) and 2^nbits
     * - 1. By setting the top two bits we ensure that the lower bound is
     * exceeded.
     */
    if (!FUNC4(Xp, nbits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ANY, ctx))
        goto err;

    FUNC2(ctx);
    t = FUNC1(ctx);
    if (t == NULL)
        goto err;

    for (i = 0; i < 1000; i++) {
        if (!FUNC4(Xq, nbits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ANY,
                             ctx))
            goto err;

        /* Check that |Xp - Xq| > 2^(nbits - 100) */
        if (!FUNC5(t, Xp, Xq))
            goto err;
        if (FUNC3(t) > (nbits - 100))
            break;
    }

    FUNC0(ctx);

    if (i < 1000)
        return 1;

    return 0;

 err:
    FUNC0(ctx);
    return 0;
}