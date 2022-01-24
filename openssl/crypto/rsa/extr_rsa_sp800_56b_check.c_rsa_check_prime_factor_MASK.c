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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC10(BIGNUM *p, BIGNUM *e, int nbits, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *p1 = NULL, *gcd = NULL;

    /* (Steps 5 a-b) prime test */
    if (FUNC3(p, ctx, NULL) != 1
            /* (Step 5c) (√2)(2^(nbits/2 - 1) <= p <= 2^(nbits/2 - 1) */
            || FUNC9(p, nbits, ctx) != 1)
        return 0;

    FUNC2(ctx);
    p1 = FUNC1(ctx);
    gcd = FUNC1(ctx);
    ret = (gcd != NULL)
          /* (Step 5d) GCD(p-1, e) = 1 */
          && (FUNC5(p1, p) != NULL)
          && FUNC8(p1, 1)
          && FUNC6(gcd, p1, e, ctx)
          && FUNC7(gcd);

    FUNC4(p1);
    FUNC0(ctx);
    return ret;
}