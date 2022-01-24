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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(BN_CTX *ctx, const BIGNUM *p, const BIGNUM *q,
                BIGNUM *lcm, BIGNUM *gcd, BIGNUM *p1, BIGNUM *q1,
                BIGNUM *p1q1)
{
    return FUNC3(p1, p, FUNC4())    /* p-1 */
           && FUNC3(q1, q, FUNC4()) /* q-1 */
           && FUNC2(p1q1, p1, q1, ctx)     /* (p-1)(q-1) */
           && FUNC1(gcd, p1, q1, ctx)
           && FUNC0(lcm, NULL, p1q1, gcd, ctx); /* LCM((p-1, q-1)) */
}