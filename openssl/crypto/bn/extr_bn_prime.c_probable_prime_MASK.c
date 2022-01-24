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
typedef  scalar_t__ prime_t ;
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ BN_MASK2 ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ODD ; 
 int /*<<< orphan*/  BN_RAND_TOP_TWO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 scalar_t__* primes ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(BIGNUM *rnd, int bits, int safe, prime_t *mods,
                          BN_CTX *ctx)
{
    int i;
    BN_ULONG delta;
    int trial_divisions = FUNC7(bits);
    BN_ULONG maxdelta = BN_MASK2 - primes[trial_divisions - 1];

 again:
    /* TODO: Not all primes are private */
    if (!FUNC4(rnd, bits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ODD, ctx))
        return 0;
    if (safe && !FUNC5(rnd, 1))
        return 0;
    /* we now have a random number 'rnd' to test. */
    for (i = 1; i < trial_divisions; i++) {
        BN_ULONG mod = FUNC2(rnd, (BN_ULONG)primes[i]);
        if (mod == (BN_ULONG)-1)
            return 0;
        mods[i] = (prime_t) mod;
    }
    delta = 0;
 loop:
    for (i = 1; i < trial_divisions; i++) {
        /*
         * check that rnd is a prime and also that
         * gcd(rnd-1,primes) == 1 (except for 2)
         * do the second check only if we are interested in safe primes
         * in the case that the candidate prime is a single word then
         * we check only the primes up to sqrt(rnd)
         */
        if (bits <= 31 && delta <= 0x7fffffff
                && FUNC8(primes[i]) > FUNC1(rnd) + delta)
            break;
        if (safe ? (mods[i] + delta) % primes[i] <= 1
                 : (mods[i] + delta) % primes[i] == 0) {
            delta += safe ? 4 : 2;
            if (delta > maxdelta)
                goto again;
            goto loop;
        }
    }
    if (!FUNC0(rnd, delta))
        return 0;
    if (FUNC3(rnd) != bits)
        goto again;
    FUNC6(rnd);
    return 1;
}