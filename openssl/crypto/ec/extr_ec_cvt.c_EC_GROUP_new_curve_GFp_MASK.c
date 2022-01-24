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
typedef  int /*<<< orphan*/  EC_METHOD ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

EC_GROUP *FUNC7(const BIGNUM *p, const BIGNUM *a,
                                 const BIGNUM *b, BN_CTX *ctx)
{
    const EC_METHOD *meth;
    EC_GROUP *ret;

#if defined(OPENSSL_BN_ASM_MONT)
    /*
     * This might appear controversial, but the fact is that generic
     * prime method was observed to deliver better performance even
     * for NIST primes on a range of platforms, e.g.: 60%-15%
     * improvement on IA-64, ~25% on ARM, 30%-90% on P4, 20%-25%
     * in 32-bit build and 35%--12% in 64-bit build on Core2...
     * Coefficients are relative to optimized bn_nist.c for most
     * intensive ECDSA verify and ECDH operations for 192- and 521-
     * bit keys respectively. Choice of these boundary values is
     * arguable, because the dependency of improvement coefficient
     * from key length is not a "monotone" curve. For example while
     * 571-bit result is 23% on ARM, 384-bit one is -1%. But it's
     * generally faster, sometimes "respectfully" faster, sometimes
     * "tolerably" slower... What effectively happens is that loop
     * with bn_mul_add_words is put against bn_mul_mont, and the
     * latter "wins" on short vectors. Correct solution should be
     * implementing dedicated NxN multiplication subroutines for
     * small N. But till it materializes, let's stick to generic
     * prime method...
     *                                              <appro>
     */
    meth = EC_GFp_mont_method();
#else
    if (FUNC0(p))
        meth = FUNC2();
    else
        meth = FUNC1();
#endif

    ret = FUNC4(FUNC6(ctx), meth);
    if (ret == NULL)
        return NULL;

    if (!FUNC5(ret, p, a, b, ctx)) {
        FUNC3(ret);
        return NULL;
    }

    return ret;
}