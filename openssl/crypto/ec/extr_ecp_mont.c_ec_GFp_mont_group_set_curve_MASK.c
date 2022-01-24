#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * field_data2; int /*<<< orphan*/ * field_data1; int /*<<< orphan*/  libctx; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  EC_F_EC_GFP_MONT_GROUP_SET_CURVE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC11(EC_GROUP *group, const BIGNUM *p,
                                const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
    BN_CTX *new_ctx = NULL;
    BN_MONT_CTX *mont = NULL;
    BIGNUM *one = NULL;
    int ret = 0;

    FUNC2(group->field_data1);
    group->field_data1 = NULL;
    FUNC5(group->field_data2);
    group->field_data2 = NULL;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC1(group->libctx);
        if (ctx == NULL)
            return 0;
    }

    mont = FUNC3();
    if (mont == NULL)
        goto err;
    if (!FUNC4(mont, p, ctx)) {
        FUNC9(EC_F_EC_GFP_MONT_GROUP_SET_CURVE, ERR_R_BN_LIB);
        goto err;
    }
    one = FUNC6();
    if (one == NULL)
        goto err;
    if (!FUNC7(one, FUNC8(), mont, ctx))
        goto err;

    group->field_data1 = mont;
    mont = NULL;
    group->field_data2 = one;
    one = NULL;

    ret = FUNC10(group, p, a, b, ctx);

    if (!ret) {
        FUNC2(group->field_data1);
        group->field_data1 = NULL;
        FUNC5(group->field_data2);
        group->field_data2 = NULL;
    }

 err:
    FUNC5(one);
    FUNC0(new_ctx);
    FUNC2(mont);
    return ret;
}