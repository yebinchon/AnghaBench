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
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
                              BIGNUM *Xp1, BIGNUM *Xp2,
                              const BIGNUM *Xp,
                              const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0;

    FUNC2(ctx);
    if (Xp1 == NULL)
        Xp1 = FUNC1(ctx);
    if (Xp2 == NULL)
        Xp2 = FUNC1(ctx);
    if (Xp1 == NULL || Xp2 == NULL)
        goto error;

    if (!FUNC4(Xp1, 101, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY, ctx))
        goto error;
    if (!FUNC4(Xp2, 101, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY, ctx))
        goto error;
    if (!FUNC3(p, p1, p2, Xp, Xp1, Xp2, e, ctx, cb))
        goto error;

    ret = 1;

 error:
    FUNC0(ctx);

    return ret;

}