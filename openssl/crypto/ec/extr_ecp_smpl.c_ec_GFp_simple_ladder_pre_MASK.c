#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  field; TYPE_1__* meth; int /*<<< orphan*/ * b; int /*<<< orphan*/ * a; } ;
struct TYPE_23__ {scalar_t__ Z_is_one; int /*<<< orphan*/ * Z; int /*<<< orphan*/ * X; int /*<<< orphan*/ * Y; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* field_mul ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC16(const EC_GROUP *group,
                             EC_POINT *r, EC_POINT *s,
                             EC_POINT *p, BN_CTX *ctx)
{
    BIGNUM *t1, *t2, *t3, *t4, *t5, *t6 = NULL;

    t1 = r->Z;
    t2 = r->Y;
    t3 = s->X;
    t4 = r->X;
    t5 = s->Y;
    t6 = s->Z;

    /* convert p: (X,Y,Z) -> (XZ,Y,Z**3) */
    if (!group->meth->field_mul(group, p->X, p->X, p->Z, ctx)
        || !group->meth->field_sqr(group, t1, p->Z, ctx)
        || !group->meth->field_mul(group, p->Z, p->Z, t1, ctx)
        /* r := 2p */
        || !group->meth->field_sqr(group, t2, p->X, ctx)
        || !group->meth->field_sqr(group, t3, p->Z, ctx)
        || !group->meth->field_mul(group, t4, t3, group->a, ctx)
        || !FUNC2(t5, t2, t4, group->field)
        || !FUNC0(t2, t2, t4, group->field)
        || !group->meth->field_sqr(group, t5, t5, ctx)
        || !group->meth->field_mul(group, t6, t3, group->b, ctx)
        || !group->meth->field_mul(group, t1, p->X, p->Z, ctx)
        || !group->meth->field_mul(group, t4, t1, t6, ctx)
        || !FUNC1(t4, t4, 3, group->field)
        /* r->X coord output */
        || !FUNC2(r->X, t5, t4, group->field)
        || !group->meth->field_mul(group, t1, t1, t2, ctx)
        || !group->meth->field_mul(group, t2, t3, t6, ctx)
        || !FUNC0(t1, t1, t2, group->field)
        /* r->Z coord output */
        || !FUNC1(r->Z, t1, 2, group->field)
        || !FUNC3(s, p))
        return 0;

    r->Z_is_one = 0;
    s->Z_is_one = 0;
    p->Z_is_one = 0;

    return 1;
}