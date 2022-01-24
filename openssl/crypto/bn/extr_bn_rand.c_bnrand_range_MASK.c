#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ neg; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BNRAND_FLAG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BNRAND_RANGE ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ANY ; 
 int /*<<< orphan*/  BN_R_INVALID_RANGE ; 
 int /*<<< orphan*/  BN_R_TOO_MANY_ITERATIONS ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(BNRAND_FLAG flag, BIGNUM *r, const BIGNUM *range,
                        BN_CTX *ctx)
{
    int n;
    int count = 100;

    if (range->neg || FUNC2(range)) {
        FUNC6(BN_F_BNRAND_RANGE, BN_R_INVALID_RANGE);
        return 0;
    }

    n = FUNC3(range);     /* n > 0 */

    /* BN_is_bit_set(range, n - 1) always holds */

    if (n == 1)
        FUNC5(r);
    else if (!FUNC1(range, n - 2) && !FUNC1(range, n - 3)) {
        /*
         * range = 100..._2, so 3*range (= 11..._2) is exactly one bit longer
         * than range
         */
        do {
            if (!FUNC8(flag, r, n + 1, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY,
                        ctx))
                return 0;

            /*
             * If r < 3*range, use r := r MOD range (which is either r, r -
             * range, or r - 2*range). Otherwise, iterate once more. Since
             * 3*range = 11..._2, each iteration succeeds with probability >=
             * .75.
             */
            if (FUNC0(r, range) >= 0) {
                if (!FUNC4(r, r, range))
                    return 0;
                if (FUNC0(r, range) >= 0)
                    if (!FUNC4(r, r, range))
                        return 0;
            }

            if (!--count) {
                FUNC6(BN_F_BNRAND_RANGE, BN_R_TOO_MANY_ITERATIONS);
                return 0;
            }

        }
        while (FUNC0(r, range) >= 0);
    } else {
        do {
            /* range = 11..._2  or  range = 101..._2 */
            if (!FUNC8(flag, r, n, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY, ctx))
                return 0;

            if (!--count) {
                FUNC6(BN_F_BNRAND_RANGE, BN_R_TOO_MANY_ITERATIONS);
                return 0;
            }
        }
        while (FUNC0(r, range) >= 0);
    }

    FUNC7(r);
    return 1;
}