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
struct TYPE_7__ {TYPE_1__* meth; int /*<<< orphan*/  field; int /*<<< orphan*/  libctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* field_mul ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_SIMPLE_FIELD_INV ; 
 int /*<<< orphan*/  EC_R_CANNOT_INVERT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC11(const EC_GROUP *group, BIGNUM *r, const BIGNUM *a,
                            BN_CTX *ctx)
{
    BIGNUM *e = NULL;
    BN_CTX *new_ctx = NULL;
    int ret = 0;

    if (ctx == NULL
            && (ctx = new_ctx = FUNC3(group->libctx)) == NULL)
        return 0;

    FUNC4(ctx);
    if ((e = FUNC2(ctx)) == NULL)
        goto err;

    do {
        if (!FUNC7(e, group->field, ctx))
        goto err;
    } while (FUNC5(e));

    /* r := a * e */
    if (!group->meth->field_mul(group, r, a, e, ctx))
        goto err;
    /* r := 1/(a * e) */
    if (!FUNC6(r, r, group->field, ctx)) {
        FUNC8(EC_F_EC_GFP_SIMPLE_FIELD_INV, EC_R_CANNOT_INVERT);
        goto err;
    }
    /* r := e/(a * e) = 1/a */
    if (!group->meth->field_mul(group, r, r, e, ctx))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}