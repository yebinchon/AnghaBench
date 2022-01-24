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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC6 () ; 

BIGNUM *FUNC7(const BIGNUM *A, const BIGNUM *v, const BIGNUM *u,
                            const BIGNUM *b, const BIGNUM *N)
{
    BIGNUM *tmp = NULL, *S = NULL;
    BN_CTX *bn_ctx;

    if (u == NULL || A == NULL || v == NULL || b == NULL || N == NULL)
        return NULL;

    if ((bn_ctx = FUNC1()) == NULL || (tmp = FUNC6()) == NULL)
        goto err;

    /* S = (A*v**u) ** b */

    if (!FUNC4(tmp, v, u, N, bn_ctx))
        goto err;
    if (!FUNC5(tmp, A, tmp, N, bn_ctx))
        goto err;

    S = FUNC6();
    if (S != NULL && !FUNC4(S, tmp, b, N, bn_ctx)) {
        FUNC3(S);
        S = NULL;
    }
 err:
    FUNC0(bn_ctx);
    FUNC2(tmp);
    return S;
}