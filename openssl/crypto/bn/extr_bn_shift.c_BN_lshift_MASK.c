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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_LSHIFT ; 
 int /*<<< orphan*/  BN_R_INVALID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC4(BIGNUM *r, const BIGNUM *a, int n)
{
    int ret;

    if (n < 0) {
        FUNC0(BN_F_BN_LSHIFT, BN_R_INVALID_SHIFT);
        return 0;
    }

    ret = FUNC3(r, a, n);

    FUNC2(r);
    FUNC1(r);

    return ret;
}