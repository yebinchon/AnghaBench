#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {int /*<<< orphan*/  field; TYPE_1__* meth; int /*<<< orphan*/ * a; int /*<<< orphan*/  b; } ;
struct TYPE_31__ {int /*<<< orphan*/ * Z; int /*<<< orphan*/ * X; } ;
struct TYPE_30__ {int /*<<< orphan*/  (* field_mul ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC29(const EC_GROUP *group,
                              EC_POINT *r, EC_POINT *s,
                              EC_POINT *p, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *t0, *t1, *t2, *t3, *t4, *t5, *t6, *t7 = NULL;

    FUNC2(ctx);
    t0 = FUNC1(ctx);
    t1 = FUNC1(ctx);
    t2 = FUNC1(ctx);
    t3 = FUNC1(ctx);
    t4 = FUNC1(ctx);
    t5 = FUNC1(ctx);
    t6 = FUNC1(ctx);
    t7 = FUNC1(ctx);

    if (t7 == NULL
        || !group->meth->field_mul(group, t0, r->X, s->X, ctx)
        || !group->meth->field_mul(group, t1, r->Z, s->Z, ctx)
        || !group->meth->field_mul(group, t2, r->X, s->Z, ctx)
        || !group->meth->field_mul(group, t3, r->Z, s->X, ctx)
        || !group->meth->field_mul(group, t4, group->a, t1, ctx)
        || !FUNC3(t0, t0, t4, group->field)
        || !FUNC3(t4, t3, t2, group->field)
        || !group->meth->field_mul(group, t0, t4, t0, ctx)
        || !group->meth->field_sqr(group, t1, t1, ctx)
        || !FUNC5(t7, group->b, 2, group->field)
        || !group->meth->field_mul(group, t1, t7, t1, ctx)
        || !FUNC4(t0, t0, group->field)
        || !FUNC3(t0, t1, t0, group->field)
        || !FUNC6(t1, t2, t3, group->field)
        || !group->meth->field_sqr(group, t1, t1, ctx)
        || !group->meth->field_mul(group, t3, t1, p->X, ctx)
        || !group->meth->field_mul(group, t0, p->Z, t0, ctx)
        /* s->X coord output */
        || !FUNC6(s->X, t0, t3, group->field)
        /* s->Z coord output */
        || !group->meth->field_mul(group, s->Z, p->Z, t1, ctx)
        || !group->meth->field_sqr(group, t3, r->X, ctx)
        || !group->meth->field_sqr(group, t2, r->Z, ctx)
        || !group->meth->field_mul(group, t4, t2, group->a, ctx)
        || !FUNC3(t5, r->X, r->Z, group->field)
        || !group->meth->field_sqr(group, t5, t5, ctx)
        || !FUNC6(t5, t5, t3, group->field)
        || !FUNC6(t5, t5, t2, group->field)
        || !FUNC6(t6, t3, t4, group->field)
        || !group->meth->field_sqr(group, t6, t6, ctx)
        || !group->meth->field_mul(group, t0, t2, t5, ctx)
        || !group->meth->field_mul(group, t0, t7, t0, ctx)
        /* r->X coord output */
        || !FUNC6(r->X, t6, t0, group->field)
        || !FUNC3(t6, t3, t4, group->field)
        || !group->meth->field_sqr(group, t3, t2, ctx)
        || !group->meth->field_mul(group, t7, t3, t7, ctx)
        || !group->meth->field_mul(group, t5, t5, t6, ctx)
        || !FUNC4(t5, t5, group->field)
        /* r->Z coord output */
        || !FUNC3(r->Z, t7, t5, group->field))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
    return ret;
}