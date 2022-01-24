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
 int /*<<< orphan*/  BN_F_BN_GF2M_MOD ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int*,scalar_t__) ; 
 int /*<<< orphan*/  BN_R_INVALID_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

int FUNC5(BIGNUM *r, const BIGNUM *a, const BIGNUM *p)
{
    int ret = 0;
    int arr[6];
    FUNC4(a);
    FUNC4(p);
    ret = FUNC1(p, arr, FUNC3(arr));
    if (!ret || ret > (int)FUNC3(arr)) {
        FUNC2(BN_F_BN_GF2M_MOD, BN_R_INVALID_LENGTH);
        return 0;
    }
    ret = FUNC0(r, a, arr);
    FUNC4(r);
    return ret;
}