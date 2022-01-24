#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  b; int /*<<< orphan*/  a; TYPE_1__* meth; int /*<<< orphan*/  libctx; int /*<<< orphan*/ * field; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* field_decode ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(const EC_GROUP *group, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *a, *b, *order, *tmp_1, *tmp_2;
    const BIGNUM *p = group->field;
    BN_CTX *new_ctx = NULL;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3(group->libctx);
        if (ctx == NULL) {
            FUNC12(EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT,
                  ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }
    FUNC4(ctx);
    a = FUNC2(ctx);
    b = FUNC2(ctx);
    tmp_1 = FUNC2(ctx);
    tmp_2 = FUNC2(ctx);
    order = FUNC2(ctx);
    if (order == NULL)
        goto err;

    if (group->meth->field_decode) {
        if (!group->meth->field_decode(group, a, group->a, ctx))
            goto err;
        if (!group->meth->field_decode(group, b, group->b, ctx))
            goto err;
    } else {
        if (!FUNC5(a, group->a))
            goto err;
        if (!FUNC5(b, group->b))
            goto err;
    }

    /*-
     * check the discriminant:
     * y^2 = x^3 + a*x + b is an elliptic curve <=> 4*a^3 + 27*b^2 != 0 (mod p)
     * 0 =< a, b < p
     */
    if (FUNC6(a)) {
        if (FUNC6(b))
            goto err;
    } else if (!FUNC6(b)) {
        if (!FUNC10(tmp_1, a, p, ctx))
            goto err;
        if (!FUNC9(tmp_2, tmp_1, a, p, ctx))
            goto err;
        if (!FUNC7(tmp_1, tmp_2, 2))
            goto err;
        /* tmp_1 = 4*a^3 */

        if (!FUNC10(tmp_2, b, p, ctx))
            goto err;
        if (!FUNC11(tmp_2, 27))
            goto err;
        /* tmp_2 = 27*b^2 */

        if (!FUNC8(a, tmp_1, tmp_2, p, ctx))
            goto err;
        if (FUNC6(a))
            goto err;
    }
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}