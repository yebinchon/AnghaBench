
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {int field; TYPE_1__* meth; int * b; int * a; } ;
struct TYPE_23__ {scalar_t__ Z_is_one; int * Z; int * X; int * Y; } ;
struct TYPE_22__ {int (* field_mul ) (TYPE_3__ const*,int *,int *,int *,int *) ;int (* field_sqr ) (TYPE_3__ const*,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_mod_add_quick (int *,int *,int *,int ) ;
 int BN_mod_lshift_quick (int *,int *,int,int ) ;
 int BN_mod_sub_quick (int *,int *,int *,int ) ;
 int EC_POINT_copy (TYPE_2__*,TYPE_2__*) ;
 int stub1 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub10 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub11 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub12 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub2 (TYPE_3__ const*,int *,int *,int *) ;
 int stub3 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub4 (TYPE_3__ const*,int *,int *,int *) ;
 int stub5 (TYPE_3__ const*,int *,int *,int *) ;
 int stub6 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub7 (TYPE_3__ const*,int *,int *,int *) ;
 int stub8 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub9 (TYPE_3__ const*,int *,int *,int *,int *) ;

int ec_GFp_simple_ladder_pre(const EC_GROUP *group,
                             EC_POINT *r, EC_POINT *s,
                             EC_POINT *p, BN_CTX *ctx)
{
    BIGNUM *t1, *t2, *t3, *t4, *t5, *t6 = ((void*)0);

    t1 = r->Z;
    t2 = r->Y;
    t3 = s->X;
    t4 = r->X;
    t5 = s->Y;
    t6 = s->Z;


    if (!group->meth->field_mul(group, p->X, p->X, p->Z, ctx)
        || !group->meth->field_sqr(group, t1, p->Z, ctx)
        || !group->meth->field_mul(group, p->Z, p->Z, t1, ctx)

        || !group->meth->field_sqr(group, t2, p->X, ctx)
        || !group->meth->field_sqr(group, t3, p->Z, ctx)
        || !group->meth->field_mul(group, t4, t3, group->a, ctx)
        || !BN_mod_sub_quick(t5, t2, t4, group->field)
        || !BN_mod_add_quick(t2, t2, t4, group->field)
        || !group->meth->field_sqr(group, t5, t5, ctx)
        || !group->meth->field_mul(group, t6, t3, group->b, ctx)
        || !group->meth->field_mul(group, t1, p->X, p->Z, ctx)
        || !group->meth->field_mul(group, t4, t1, t6, ctx)
        || !BN_mod_lshift_quick(t4, t4, 3, group->field)

        || !BN_mod_sub_quick(r->X, t5, t4, group->field)
        || !group->meth->field_mul(group, t1, t1, t2, ctx)
        || !group->meth->field_mul(group, t2, t3, t6, ctx)
        || !BN_mod_add_quick(t1, t1, t2, group->field)

        || !BN_mod_lshift_quick(r->Z, t1, 2, group->field)
        || !EC_POINT_copy(s, p))
        return 0;

    r->Z_is_one = 0;
    s->Z_is_one = 0;
    p->Z_is_one = 0;

    return 1;
}
