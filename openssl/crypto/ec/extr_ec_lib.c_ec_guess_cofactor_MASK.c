#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  order; int /*<<< orphan*/ * cofactor; int /*<<< orphan*/  field; TYPE_1__* meth; int /*<<< orphan*/  libctx; } ;
struct TYPE_4__ {scalar_t__ field_type; } ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ NID_X9_62_characteristic_two_field ; 

__attribute__((used)) static int FUNC13(EC_GROUP *group) {
    int ret = 0;
    BN_CTX *ctx = NULL;
    BIGNUM *q = NULL;

    /*-
     * If the cofactor is too large, we cannot guess it.
     * The RHS of below is a strict overestimate of lg(4 * sqrt(q))
     */
    if (FUNC8(group->order) <= (FUNC8(group->field) + 1) / 2 + 3) {
        /* default to 0 */
        FUNC12(group->cofactor);
        /* return success */
        return 1;
    }

    if ((ctx = FUNC3(group->libctx)) == NULL)
        return 0;

    FUNC4(ctx);
    if ((q = FUNC2(ctx)) == NULL)
        goto err;

    /* set q = 2**m for binary fields; q = p otherwise */
    if (group->meth->field_type == NID_X9_62_characteristic_two_field) {
        FUNC12(q);
        if (!FUNC10(q, FUNC8(group->field) - 1))
            goto err;
    } else {
        if (!FUNC6(q, group->field))
            goto err;
    }

    /* compute h = \lfloor (q + 1)/n \rceil = \lfloor (q + 1 + n/2)/n \rfloor */
    if (!FUNC9(group->cofactor, group->order) /* n/2 */
        || !FUNC5(group->cofactor, group->cofactor, q) /* q + n/2 */
        /* q + 1 + n/2 */
        || !FUNC5(group->cofactor, group->cofactor, FUNC11())
        /* (q + 1 + n/2)/n */
        || !FUNC7(group->cofactor, NULL, group->cofactor, group->order, ctx))
        goto err;
    ret = 1;
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    return ret;
}