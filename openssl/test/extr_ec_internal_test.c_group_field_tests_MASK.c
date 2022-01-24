#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * field; TYPE_1__* meth; } ;
struct TYPE_12__ {int (* field_inv ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* field_mul ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* field_encode ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* field_decode ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ EC_R_CANNOT_INVERT ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_LIB_EC ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(const EC_GROUP *group, BN_CTX *ctx)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL;
    int ret = 0;

    if (group->meth->field_inv == NULL || group->meth->field_mul == NULL)
        return 1;

    FUNC2(ctx);
    a = FUNC1(ctx);
    b = FUNC1(ctx);
    if (!FUNC13(c = FUNC1(ctx))
        /* 1/1 = 1 */
        || !FUNC14(group->meth->field_inv(group, b, FUNC6(), ctx))
        || !FUNC14(FUNC3(b))
        /* (1/a)*a = 1 */
        || !FUNC14(FUNC5(a, FUNC4(group->field) - 1,
                                     BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY))
        || !FUNC14(group->meth->field_inv(group, b, a, ctx))
        || (group->meth->field_encode &&
            !FUNC14(group->meth->field_encode(group, a, a, ctx)))
        || (group->meth->field_encode &&
            !FUNC14(group->meth->field_encode(group, b, b, ctx)))
        || !FUNC14(group->meth->field_mul(group, c, a, b, ctx))
        || (group->meth->field_decode &&
            !FUNC14(group->meth->field_decode(group, c, c, ctx)))
        || !FUNC14(FUNC3(c)))
        goto err;

    /* 1/0 = error */
    FUNC7(a);
    if (!FUNC12(group->meth->field_inv(group, b, a, ctx))
        || !FUNC14(FUNC8(FUNC11()) == ERR_LIB_EC)
        || !FUNC14(FUNC9(FUNC11()) ==
                      EC_R_CANNOT_INVERT)
        /* 1/p = error */
        || !FUNC12(group->meth->field_inv(group, b, group->field, ctx))
        || !FUNC14(FUNC8(FUNC11()) == ERR_LIB_EC)
        || !FUNC14(FUNC9(FUNC11()) ==
                      EC_R_CANNOT_INVERT))
        goto err;

    FUNC10();
    ret = 1;
 err:
    FUNC0(ctx);
    return ret;
}