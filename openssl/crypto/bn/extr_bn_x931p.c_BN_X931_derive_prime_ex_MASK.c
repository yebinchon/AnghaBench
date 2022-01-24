#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
struct TYPE_37__ {scalar_t__ neg; } ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC16(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
                            const BIGNUM *Xp, const BIGNUM *Xp1,
                            const BIGNUM *Xp2, const BIGNUM *e, BN_CTX *ctx,
                            BN_GENCB *cb)
{
    int ret = 0;

    BIGNUM *t, *p1p2, *pm1;

    /* Only even e supported */
    if (!FUNC8(e))
        return 0;

    FUNC2(ctx);
    if (p1 == NULL)
        p1 = FUNC1(ctx);

    if (p2 == NULL)
        p2 = FUNC1(ctx);

    t = FUNC1(ctx);

    p1p2 = FUNC1(ctx);

    pm1 = FUNC1(ctx);

    if (pm1 == NULL)
        goto err;

    if (!FUNC15(p1, Xp1, ctx, cb))
        goto err;

    if (!FUNC15(p2, Xp2, ctx, cb))
        goto err;

    if (!FUNC12(p1p2, p1, p2, ctx))
        goto err;

    /* First set p to value of Rp */

    if (!FUNC10(p, p2, p1, ctx))
        goto err;

    if (!FUNC12(p, p, p2, ctx))
        goto err;

    if (!FUNC10(t, p1, p2, ctx))
        goto err;

    if (!FUNC12(t, t, p1, ctx))
        goto err;

    if (!FUNC13(p, p, t))
        goto err;

    if (p->neg && !FUNC4(p, p, p1p2))
        goto err;

    /* p now equals Rp */

    if (!FUNC11(p, p, Xp, p1p2, ctx))
        goto err;

    if (!FUNC4(p, p, Xp))
        goto err;

    /* p now equals Yp0 */

    for (;;) {
        int i = 1;
        FUNC3(cb, 0, i++);
        if (!FUNC6(pm1, p))
            goto err;
        if (!FUNC14(pm1, 1))
            goto err;
        if (!FUNC7(t, pm1, e, ctx))
            goto err;
        if (FUNC9(t)) {
            /*
             * X9.31 specifies 8 MR and 1 Lucas test or any prime test
             * offering similar or better guarantees 50 MR is considerably
             * better.
             */
            int r = FUNC5(p, ctx, cb);
            if (r < 0)
                goto err;
            if (r)
                break;
        }
        if (!FUNC4(p, p, p1p2))
            goto err;
    }

    FUNC3(cb, 3, 0);

    ret = 1;

 err:

    FUNC0(ctx);

    return ret;
}