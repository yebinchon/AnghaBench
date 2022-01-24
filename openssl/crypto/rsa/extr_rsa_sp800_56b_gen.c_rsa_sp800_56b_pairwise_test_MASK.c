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
struct TYPE_3__ {int /*<<< orphan*/  n; int /*<<< orphan*/  d; int /*<<< orphan*/  e; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RSA_F_RSA_SP800_56B_PAIRWISE_TEST ; 
 int /*<<< orphan*/  RSA_R_PAIRWISE_TEST_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(RSA *rsa, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *k, *tmp;

    FUNC2(ctx);
    tmp = FUNC1(ctx);
    k = FUNC1(ctx);
    if (k == NULL)
        goto err;

    ret = (FUNC5(k, 2)
          && FUNC4(tmp, k, rsa->e, rsa->n, ctx)
          && FUNC4(tmp, tmp, rsa->d, rsa->n, ctx)
          && FUNC3(k, tmp) == 0);
    if (ret == 0)
        FUNC6(RSA_F_RSA_SP800_56B_PAIRWISE_TEST, RSA_R_PAIRWISE_TEST_FAILURE);
err:
    FUNC0(ctx);
    return ret;
}