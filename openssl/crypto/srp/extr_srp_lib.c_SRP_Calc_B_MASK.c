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
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

BIGNUM *FUNC9(const BIGNUM *b, const BIGNUM *N, const BIGNUM *g,
                   const BIGNUM *v)
{
    BIGNUM *kv = NULL, *gb = NULL;
    BIGNUM *B = NULL, *k = NULL;
    BN_CTX *bn_ctx;

    if (b == NULL || N == NULL || g == NULL || v == NULL ||
        (bn_ctx = FUNC1()) == NULL)
        return NULL;

    if ((kv = FUNC7()) == NULL ||
        (gb = FUNC7()) == NULL || (B = FUNC7()) == NULL)
        goto err;

    /* B = g**b + k*v */

    if (!FUNC5(gb, g, b, N, bn_ctx)
        || (k = FUNC8(N, g)) == NULL
        || !FUNC6(kv, v, k, N, bn_ctx)
        || !FUNC4(B, gb, kv, N, bn_ctx)) {
        FUNC3(B);
        B = NULL;
    }
 err:
    FUNC0(bn_ctx);
    FUNC2(kv);
    FUNC2(gb);
    FUNC3(k);
    return B;
}