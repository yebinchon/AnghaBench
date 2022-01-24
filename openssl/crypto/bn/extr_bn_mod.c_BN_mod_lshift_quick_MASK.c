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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_MOD_LSHIFT_QUICK ; 
 int /*<<< orphan*/  BN_R_INPUT_NOT_REDUCED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 

int FUNC8(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m)
{
    if (r != a) {
        if (FUNC1(r, a) == NULL)
            return 0;
    }

    while (n > 0) {
        int max_shift;

        /* 0 < r < m */
        max_shift = FUNC4(m) - FUNC4(r);
        /* max_shift >= 0 */

        if (max_shift < 0) {
            FUNC6(BN_F_BN_MOD_LSHIFT_QUICK, BN_R_INPUT_NOT_REDUCED);
            return 0;
        }

        if (max_shift > n)
            max_shift = n;

        if (max_shift) {
            if (!FUNC2(r, r, max_shift))
                return 0;
            n -= max_shift;
        } else {
            if (!FUNC3(r, r))
                return 0;
            --n;
        }

        /* BN_num_bits(r) <= BN_num_bits(m) */

        if (FUNC0(r, m) >= 0) {
            if (!FUNC5(r, r, m))
                return 0;
        }
    }
    FUNC7(r);

    return 1;
}