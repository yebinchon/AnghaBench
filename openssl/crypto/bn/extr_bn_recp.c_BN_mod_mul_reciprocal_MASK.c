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
typedef  int /*<<< orphan*/  BN_RECP_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(BIGNUM *r, const BIGNUM *x, const BIGNUM *y,
                          BN_RECP_CTX *recp, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *a;
    const BIGNUM *ca;

    FUNC2(ctx);
    if ((a = FUNC1(ctx)) == NULL)
        goto err;
    if (y != NULL) {
        if (x == y) {
            if (!FUNC5(a, x, ctx))
                goto err;
        } else {
            if (!FUNC4(a, x, y, ctx))
                goto err;
        }
        ca = a;
    } else
        ca = x;                 /* Just do the mod */

    ret = FUNC3(NULL, r, ca, recp, ctx);
 err:
    FUNC0(ctx);
    FUNC6(r);
    return ret;
}