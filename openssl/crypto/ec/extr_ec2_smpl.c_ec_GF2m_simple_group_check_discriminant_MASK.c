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
struct TYPE_3__ {int /*<<< orphan*/  poly; int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 

int FUNC8(const EC_GROUP *group,
                                            BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *b;
#ifndef FIPS_MODE
    BN_CTX *new_ctx = NULL;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL) {
            FUNC7(EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT,
                  ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }
#endif
    FUNC4(ctx);
    b = FUNC2(ctx);
    if (b == NULL)
        goto err;

    if (!FUNC5(b, group->b, group->poly))
        goto err;

    /*
     * check the discriminant: y^2 + x*y = x^3 + a*x^2 + b is an elliptic
     * curve <=> b != 0 (mod p)
     */
    if (FUNC6(b))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
#ifndef FIPS_MODE
    FUNC1(new_ctx);
#endif
    return ret;
}