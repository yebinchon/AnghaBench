#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * generator; TYPE_1__* meth; } ;
struct TYPE_11__ {int flags; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int EC_FLAGS_CUSTOM_CURVE ; 
 int /*<<< orphan*/  EC_F_EC_GROUP_CHECK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  EC_R_DISCRIMINANT_IS_ZERO ; 
 int /*<<< orphan*/  EC_R_INVALID_GROUP_ORDER ; 
 int /*<<< orphan*/  EC_R_POINT_IS_NOT_ON_CURVE ; 
 int /*<<< orphan*/  EC_R_UNDEFINED_GENERATOR ; 
 int /*<<< orphan*/  EC_R_UNDEFINED_ORDER ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 

int FUNC12(const EC_GROUP *group, BN_CTX *ctx)
{
#ifdef FIPS_MODE
    /*
    * ECC domain parameter validation.
    * See SP800-56A R3 5.5.2 "Assurances of Domain-Parameter Validity" Part 1b.
    */
    return EC_GROUP_check_named_curve(group, 1, ctx) >= 0 ? 1 : 0;
#else
    int ret = 0;
    const BIGNUM *order;
    BN_CTX *new_ctx = NULL;
    EC_POINT *point = NULL;

    if (group == NULL || group->meth == NULL) {
        FUNC11(EC_F_EC_GROUP_CHECK, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    /* Custom curves assumed to be correct */
    if ((group->meth->flags & EC_FLAGS_CUSTOM_CURVE) != 0)
        return 1;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC1();
        if (ctx == NULL) {
            FUNC11(EC_F_EC_GROUP_CHECK, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    /* check the discriminant */
    if (!FUNC3(group, ctx)) {
        FUNC11(EC_F_EC_GROUP_CHECK, EC_R_DISCRIMINANT_IS_ZERO);
        goto err;
    }

    /* check the generator */
    if (group->generator == NULL) {
        FUNC11(EC_F_EC_GROUP_CHECK, EC_R_UNDEFINED_GENERATOR);
        goto err;
    }
    if (FUNC8(group, group->generator, ctx) <= 0) {
        FUNC11(EC_F_EC_GROUP_CHECK, EC_R_POINT_IS_NOT_ON_CURVE);
        goto err;
    }

    /* check the order of the generator */
    if ((point = FUNC10(group)) == NULL)
        goto err;
    order = FUNC5(group);
    if (order == NULL)
        goto err;
    if (FUNC2(order)) {
        FUNC11(EC_F_EC_GROUP_CHECK, EC_R_UNDEFINED_ORDER);
        goto err;
    }

    if (!FUNC9(group, point, order, NULL, NULL, ctx))
        goto err;
    if (!FUNC7(group, point)) {
        FUNC11(EC_F_EC_GROUP_CHECK, EC_R_INVALID_GROUP_ORDER);
        goto err;
    }

    ret = 1;

 err:
    FUNC0(new_ctx);
    FUNC6(point);
    return ret;
#endif /* FIPS_MODE */
}