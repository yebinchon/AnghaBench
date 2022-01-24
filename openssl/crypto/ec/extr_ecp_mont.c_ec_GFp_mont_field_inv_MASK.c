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
struct TYPE_3__ {int /*<<< orphan*/ * field_data1; int /*<<< orphan*/  field; int /*<<< orphan*/  libctx; } ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_MONT_FIELD_INV ; 
 int /*<<< orphan*/  EC_R_CANNOT_INVERT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(const EC_GROUP *group, BIGNUM *r, const BIGNUM *a,
                            BN_CTX *ctx)
{
    BIGNUM *e = NULL;
    BN_CTX *new_ctx = NULL;
    int ret = 0;

    if (group->field_data1 == NULL)
        return 0;

    if (ctx == NULL
            && (ctx = new_ctx = FUNC3(group->libctx)) == NULL)
        return 0;

    FUNC4(ctx);
    if ((e = FUNC2(ctx)) == NULL)
        goto err;

    /* Inverse in constant time with Fermats Little Theorem */
    if (!FUNC7(e, 2))
        goto err;
    if (!FUNC8(e, group->field, e))
        goto err;
    /*-
     * Exponent e is public.
     * No need for scatter-gather or BN_FLG_CONSTTIME.
     */
    if (!FUNC6(r, a, e, group->field, ctx, group->field_data1))
        goto err;

    /* throw an error on zero */
    if (FUNC5(r)) {
        FUNC9(EC_F_EC_GFP_MONT_FIELD_INV, EC_R_CANNOT_INVERT);
        goto err;
    }

    ret = 1;

  err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}