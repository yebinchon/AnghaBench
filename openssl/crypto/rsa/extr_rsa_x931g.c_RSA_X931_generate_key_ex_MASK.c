#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC9(RSA *rsa, int bits, const BIGNUM *e,
                             BN_GENCB *cb)
{
    int ok = 0;
    BIGNUM *Xp = NULL, *Xq = NULL;
    BN_CTX *ctx = NULL;

    ctx = FUNC3();
    if (ctx == NULL)
        goto error;

    FUNC4(ctx);
    Xp = FUNC2(ctx);
    Xq = FUNC2(ctx);
    if (Xq == NULL)
        goto error;
    if (!FUNC5(Xp, Xq, bits, ctx))
        goto error;

    rsa->p = FUNC7();
    rsa->q = FUNC7();
    if (rsa->p == NULL || rsa->q == NULL)
        goto error;

    /* Generate two primes from Xp, Xq */

    if (!FUNC6(rsa->p, NULL, NULL, NULL, NULL, Xp,
                                   e, ctx, cb))
        goto error;

    if (!FUNC6(rsa->q, NULL, NULL, NULL, NULL, Xq,
                                   e, ctx, cb))
        goto error;

    /*
     * Since rsa->p and rsa->q are valid this call will just derive remaining
     * RSA components.
     */

    if (!FUNC8(rsa, NULL, NULL, NULL, NULL,
                            NULL, NULL, NULL, NULL, NULL, NULL, e, cb))
        goto error;

    rsa->dirty_cnt++;
    ok = 1;

 error:
    FUNC0(ctx);
    FUNC1(ctx);

    if (ok)
        return 1;

    return 0;

}