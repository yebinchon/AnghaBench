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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ANY ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx)
{
    BIGNUM *b = NULL;
    int ret = 0;

    FUNC2(ctx);
    if ((b = FUNC1(ctx)) == NULL)
        goto err;

    /* generate blinding value */
    do {
        if (!FUNC7(b, FUNC6(p) - 1,
                             BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY, ctx))
            goto err;
    } while (FUNC5(b));

    /* r := a * b */
    if (!FUNC4(r, a, b, p, ctx))
        goto err;

    /* r := 1/(a * b) */
    if (!FUNC3(r, r, p, ctx))
        goto err;

    /* r := b/(a * b) = 1/a */
    if (!FUNC4(r, r, b, p, ctx))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
    return ret;
}