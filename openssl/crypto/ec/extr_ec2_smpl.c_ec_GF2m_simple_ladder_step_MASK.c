#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  b; TYPE_1__* meth; } ;
struct TYPE_20__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  Z; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* field_mul ) (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC12(const EC_GROUP *group,
                               EC_POINT *r, EC_POINT *s,
                               EC_POINT *p, BN_CTX *ctx)
{
    if (!group->meth->field_mul(group, r->Y, r->Z, s->X, ctx)
        || !group->meth->field_mul(group, s->X, r->X, s->Z, ctx)
        || !group->meth->field_sqr(group, s->Y, r->Z, ctx)
        || !group->meth->field_sqr(group, r->Z, r->X, ctx)
        || !FUNC0(s->Z, r->Y, s->X)
        || !group->meth->field_sqr(group, s->Z, s->Z, ctx)
        || !group->meth->field_mul(group, s->X, r->Y, s->X, ctx)
        || !group->meth->field_mul(group, r->Y, s->Z, p->X, ctx)
        || !FUNC0(s->X, s->X, r->Y)
        || !group->meth->field_sqr(group, r->Y, r->Z, ctx)
        || !group->meth->field_mul(group, r->Z, r->Z, s->Y, ctx)
        || !group->meth->field_sqr(group, s->Y, s->Y, ctx)
        || !group->meth->field_mul(group, s->Y, s->Y, group->b, ctx)
        || !FUNC0(r->X, r->Y, s->Y))
        return 0;

    return 1;
}