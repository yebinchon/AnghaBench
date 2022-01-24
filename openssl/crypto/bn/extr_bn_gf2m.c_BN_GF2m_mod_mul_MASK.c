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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_GF2M_MOD_MUL ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int*,int const) ; 
 int /*<<< orphan*/  BN_R_INVALID_LENGTH ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

int FUNC7(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                    const BIGNUM *p, BN_CTX *ctx)
{
    int ret = 0;
    const int max = FUNC2(p) + 1;
    int *arr = NULL;
    FUNC6(a);
    FUNC6(b);
    FUNC6(p);
    if ((arr = FUNC5(sizeof(*arr) * max)) == NULL)
        goto err;
    ret = FUNC1(p, arr, max);
    if (!ret || ret > max) {
        FUNC3(BN_F_BN_GF2M_MOD_MUL, BN_R_INVALID_LENGTH);
        goto err;
    }
    ret = FUNC0(r, a, b, arr, ctx);
    FUNC6(r);
 err:
    FUNC4(arr);
    return ret;
}