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
struct TYPE_3__ {int /*<<< orphan*/  d; int /*<<< orphan*/  e; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(const RSA *rsa, int nbits, BN_CTX *ctx)
{
    int ret;
    BIGNUM *r, *p1, *q1, *lcm, *p1q1, *gcd;

    /* (Step 6a) 2^(nbits/2) < d */
    if (FUNC7(rsa->d) <= (nbits >> 1))
        return 0;

    FUNC2(ctx);
    r = FUNC1(ctx);
    p1 = FUNC1(ctx);
    q1 = FUNC1(ctx);
    lcm = FUNC1(ctx);
    p1q1 = FUNC1(ctx);
    gcd = FUNC1(ctx);
    ret = (gcd != NULL
          /* LCM(p - 1, q - 1) */
          && (FUNC8(ctx, rsa->p, rsa->q, lcm, gcd, p1, q1, p1q1) == 1)
          /* (Step 6a) d < LCM(p - 1, q - 1) */
          && (FUNC4(rsa->d, lcm) < 0)
          /* (Step 6b) 1 = (e . d) mod LCM(p - 1, q - 1) */
          && FUNC6(r, rsa->e, rsa->d, lcm, ctx)
          && FUNC5(r));

    FUNC3(p1);
    FUNC3(q1);
    FUNC3(lcm);
    FUNC3(gcd);
    FUNC0(ctx);
    return ret;
}