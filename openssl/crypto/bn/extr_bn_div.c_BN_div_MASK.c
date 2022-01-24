#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__* d; int top; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_DIV ; 
 int /*<<< orphan*/  BN_R_DIV_BY_ZERO ; 
 int /*<<< orphan*/  BN_R_NOT_INITIALIZED ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 

int FUNC4(BIGNUM *dv, BIGNUM *rm, const BIGNUM *num, const BIGNUM *divisor,
           BN_CTX *ctx)
{
    int ret;

    if (FUNC0(divisor)) {
        FUNC1(BN_F_BN_DIV, BN_R_DIV_BY_ZERO);
        return 0;
    }

    /*
     * Invalid zero-padding would have particularly bad consequences so don't
     * just rely on bn_check_top() here (bn_check_top() works only for
     * BN_DEBUG builds)
     */
    if (divisor->d[divisor->top - 1] == 0) {
        FUNC1(BN_F_BN_DIV, BN_R_NOT_INITIALIZED);
        return 0;
    }

    ret = FUNC3(dv, rm, num, divisor, ctx);

    if (ret) {
        if (dv != NULL)
            FUNC2(dv);
        if (rm != NULL)
            FUNC2(rm);
    }

    return ret;
}