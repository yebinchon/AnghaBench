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
typedef  int /*<<< orphan*/  prime_t ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_F_BN_GENERATE_PRIME_EX2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  BN_R_BITS_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUMPRIMES ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC13(BIGNUM *ret, int bits, int safe,
                          const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb,
                          BN_CTX *ctx)
{
    BIGNUM *t;
    int found = 0;
    int i, j, c1 = 0;
    prime_t *mods = NULL;
    int checks = FUNC10(bits);

    if (bits < 2) {
        /* There are no prime numbers this small. */
        FUNC5(BN_F_BN_GENERATE_PRIME_EX2, BN_R_BITS_TOO_SMALL);
        return 0;
    } else if (add == NULL && safe && bits < 6 && bits != 3) {
        /*
         * The smallest safe prime (7) is three bits.
         * But the following two safe primes with less than 6 bits (11, 23)
         * are unreachable for BN_rand with BN_RAND_TOP_TWO.
         */
        FUNC5(BN_F_BN_GENERATE_PRIME_EX2, BN_R_BITS_TOO_SMALL);
        return 0;
    }

    mods = FUNC7(sizeof(*mods) * NUMPRIMES);
    if (mods == NULL)
        goto err;

    FUNC2(ctx);
    t = FUNC1(ctx);
    if (t == NULL)
        goto err;
 loop:
    /* make a random number and set the top and bottom bits */
    if (add == NULL) {
        if (!FUNC11(ret, bits, safe, mods, ctx))
            goto err;
    } else {
        if (!FUNC12(ret, bits, safe, mods, add, rem, ctx))
            goto err;
    }

    if (!FUNC3(cb, 0, c1++))
        /* aborted */
        goto err;

    if (!safe) {
        i = FUNC9(ret, checks, ctx, 0, cb);
        if (i == -1)
            goto err;
        if (i == 0)
            goto loop;
    } else {
        /*
         * for "safe prime" generation, check that (p-1)/2 is prime. Since a
         * prime is odd, We just need to divide by 2
         */
        if (!FUNC4(t, ret))
            goto err;

        for (i = 0; i < checks; i++) {
            j = FUNC9(ret, 1, ctx, 0, cb);
            if (j == -1)
                goto err;
            if (j == 0)
                goto loop;

            j = FUNC9(t, 1, ctx, 0, cb);
            if (j == -1)
                goto err;
            if (j == 0)
                goto loop;

            if (!FUNC3(cb, 2, c1 - 1))
                goto err;
            /* We have a safe prime test pass */
        }
    }
    /* we have a prime :-) */
    found = 1;
 err:
    FUNC6(mods);
    FUNC0(ctx);
    FUNC8(ret);
    return found;
}