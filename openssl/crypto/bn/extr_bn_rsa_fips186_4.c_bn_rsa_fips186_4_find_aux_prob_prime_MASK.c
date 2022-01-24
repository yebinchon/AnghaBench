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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(const BIGNUM *Xp1,
                                                BIGNUM *p1, BN_CTX *ctx,
                                                BN_GENCB *cb)
{
    int ret = 0;
    int i = 0;

    if (FUNC3(p1, Xp1) == NULL)
        return 0;

    /* Find the first odd number >= Xp1 that is probably prime */
    for(;;) {
        i++;
        FUNC0(cb, 0, i);
        /* MR test with trial division */
        if (FUNC2(p1, ctx, cb))
            break;
        /* Get next odd number */
        if (!FUNC1(p1, 2))
            goto err;
    }
    FUNC0(cb, 2, i);
    ret = 1;
err:
    return ret;
}