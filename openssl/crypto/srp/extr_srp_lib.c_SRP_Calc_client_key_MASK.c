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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC9 () ; 
 int /*<<< orphan*/  const* FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

BIGNUM *FUNC11(const BIGNUM *N, const BIGNUM *B, const BIGNUM *g,
                            const BIGNUM *x, const BIGNUM *a, const BIGNUM *u)
{
    BIGNUM *tmp = NULL, *tmp2 = NULL, *tmp3 = NULL, *k = NULL, *K = NULL;
    BN_CTX *bn_ctx;

    if (u == NULL || B == NULL || N == NULL || g == NULL || x == NULL
        || a == NULL || (bn_ctx = FUNC1()) == NULL)
        return NULL;

    if ((tmp = FUNC9()) == NULL ||
        (tmp2 = FUNC9()) == NULL ||
        (tmp3 = FUNC9()) == NULL)
        goto err;

    if (!FUNC5(tmp, g, x, N, bn_ctx))
        goto err;
    if ((k = FUNC10(N, g)) == NULL)
        goto err;
    if (!FUNC6(tmp2, tmp, k, N, bn_ctx))
        goto err;
    if (!FUNC7(tmp, B, tmp2, N, bn_ctx))
        goto err;
    if (!FUNC8(tmp3, u, x, bn_ctx))
        goto err;
    if (!FUNC2(tmp2, a, tmp3))
        goto err;
    K = FUNC9();
    if (K != NULL && !FUNC5(K, tmp, tmp2, N, bn_ctx)) {
        FUNC4(K);
        K = NULL;
    }

 err:
    FUNC0(bn_ctx);
    FUNC3(tmp);
    FUNC3(tmp2);
    FUNC3(tmp3);
    FUNC4(k);
    return K;
}