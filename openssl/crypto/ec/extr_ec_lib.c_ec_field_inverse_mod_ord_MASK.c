#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * mont_data; int /*<<< orphan*/  order; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const EC_GROUP *group, BIGNUM *r,
                                    const BIGNUM *x, BN_CTX *ctx)
{
    BIGNUM *e = NULL;
    int ret = 0;
#ifndef FIPS_MODE
    BN_CTX *new_ctx = NULL;

    if (ctx == NULL)
        ctx = new_ctx = FUNC3();
#endif
    if (ctx == NULL)
        return 0;

    if (group->mont_data == NULL)
        goto err;

    FUNC4(ctx);
    if ((e = FUNC2(ctx)) == NULL)
        goto err;

    /*-
     * We want inverse in constant time, therefore we utilize the fact
     * order must be prime and use Fermats Little Theorem instead.
     */
    if (!FUNC6(e, 2))
        goto err;
    if (!FUNC7(e, group->order, e))
        goto err;
    /*-
     * Exponent e is public.
     * No need for scatter-gather or BN_FLG_CONSTTIME.
     */
    if (!FUNC5(r, x, e, group->order, ctx, group->mont_data))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
#ifndef FIPS_MODE
    FUNC1(new_ctx);
#endif
    return ret;
}