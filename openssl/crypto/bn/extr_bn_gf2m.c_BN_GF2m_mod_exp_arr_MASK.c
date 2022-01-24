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
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 

int FUNC13(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                        const int p[], BN_CTX *ctx)
{
    int ret = 0, i, n;
    BIGNUM *u;

    FUNC12(a);
    FUNC12(b);

    if (FUNC9(b))
        return FUNC11(r);

    if (FUNC6(b, 1))
        return (FUNC7(r, a) != NULL);

    FUNC2(ctx);
    if ((u = FUNC1(ctx)) == NULL)
        goto err;

    if (!FUNC3(u, a, p))
        goto err;

    n = FUNC10(b) - 1;
    for (i = n - 1; i >= 0; i--) {
        if (!FUNC5(u, u, p, ctx))
            goto err;
        if (FUNC8(b, i)) {
            if (!FUNC4(u, u, a, p, ctx))
                goto err;
        }
    }
    if (!FUNC7(r, u))
        goto err;
    FUNC12(r);
    ret = 1;
 err:
    FUNC0(ctx);
    return ret;
}