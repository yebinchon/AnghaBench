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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ BN_MASK2 ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ODD ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int) ; 
 scalar_t__* primes ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(BIGNUM *rnd, int bits, int safe, prime_t *mods,
                             const BIGNUM *add, const BIGNUM *rem,
                             BN_CTX *ctx)
{
    int i, ret = 0;
    BIGNUM *t1;
    BN_ULONG delta;
    int trial_divisions = FUNC12(bits);
    BN_ULONG maxdelta = BN_MASK2 - primes[trial_divisions - 1];

    FUNC2(ctx);
    if ((t1 = FUNC1(ctx)) == NULL)
        goto err;

    if (maxdelta > BN_MASK2 - FUNC5(add))
        maxdelta = BN_MASK2 - FUNC5(add);

 again:
    if (!FUNC9(rnd, bits, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD, ctx))
        goto err;

    /* we need ((rnd-rem) % add) == 0 */

    if (!FUNC6(t1, rnd, add, ctx))
        goto err;
    if (!FUNC10(rnd, rnd, t1))
        goto err;
    if (rem == NULL) {
        if (!FUNC4(rnd, safe ? 3u : 1u))
            goto err;
    } else {
        if (!FUNC3(rnd, rnd, rem))
            goto err;
    }

    if (FUNC8(rnd) < bits
            || FUNC5(rnd) < (safe ? 5u : 3u)) {
        if (!FUNC3(rnd, rnd, add))
            goto err;
    }

    /* we now have a random number 'rnd' to test. */
    for (i = 1; i < trial_divisions; i++) {
        BN_ULONG mod = FUNC7(rnd, (BN_ULONG)primes[i]);
        if (mod == (BN_ULONG)-1)
            goto err;
        mods[i] = (prime_t) mod;
    }
    delta = 0;
 loop:
    for (i = 1; i < trial_divisions; i++) {
        /* check that rnd is a prime */
        if (bits <= 31 && delta <= 0x7fffffff
                && FUNC13(primes[i]) > FUNC5(rnd) + delta)
            break;
        /* rnd mod p == 1 implies q = (rnd-1)/2 is divisible by p */
        if (safe ? (mods[i] + delta) % primes[i] <= 1
                 : (mods[i] + delta) % primes[i] == 0) {
            delta += FUNC5(add);
            if (delta > maxdelta)
                goto again;
            goto loop;
        }
    }
    if (!FUNC4(rnd, delta))
        goto err;
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC11(rnd);
    return ret;
}