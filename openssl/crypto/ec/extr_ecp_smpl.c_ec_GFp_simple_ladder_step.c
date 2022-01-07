
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_32__ {int field; TYPE_1__* meth; int * a; int b; } ;
struct TYPE_31__ {int * Z; int * X; } ;
struct TYPE_30__ {int (* field_mul ) (TYPE_3__ const*,int *,int *,int *,int *) ;int (* field_sqr ) (TYPE_3__ const*,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_mod_add_quick (int *,int *,int *,int ) ;
 int BN_mod_lshift1_quick (int *,int *,int ) ;
 int BN_mod_lshift_quick (int *,int ,int,int ) ;
 int BN_mod_sub_quick (int *,int *,int *,int ) ;
 int stub1 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub10 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub11 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub12 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub13 (TYPE_3__ const*,int *,int *,int *) ;
 int stub14 (TYPE_3__ const*,int *,int *,int *) ;
 int stub15 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub16 (TYPE_3__ const*,int *,int *,int *) ;
 int stub17 (TYPE_3__ const*,int *,int *,int *) ;
 int stub18 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub19 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub2 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub20 (TYPE_3__ const*,int *,int *,int *) ;
 int stub21 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub22 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub3 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub4 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub5 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub6 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub7 (TYPE_3__ const*,int *,int *,int *) ;
 int stub8 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub9 (TYPE_3__ const*,int *,int *,int *) ;

int ec_GFp_simple_ladder_step(const EC_GROUP *group,
                              EC_POINT *r, EC_POINT *s,
                              EC_POINT *p, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *t0, *t1, *t2, *t3, *t4, *t5, *t6, *t7 = ((void*)0);

    BN_CTX_start(ctx);
    t0 = BN_CTX_get(ctx);
    t1 = BN_CTX_get(ctx);
    t2 = BN_CTX_get(ctx);
    t3 = BN_CTX_get(ctx);
    t4 = BN_CTX_get(ctx);
    t5 = BN_CTX_get(ctx);
    t6 = BN_CTX_get(ctx);
    t7 = BN_CTX_get(ctx);

    if (t7 == ((void*)0)
        || !group->meth->field_mul(group, t0, r->X, s->X, ctx)
        || !group->meth->field_mul(group, t1, r->Z, s->Z, ctx)
        || !group->meth->field_mul(group, t2, r->X, s->Z, ctx)
        || !group->meth->field_mul(group, t3, r->Z, s->X, ctx)
        || !group->meth->field_mul(group, t4, group->a, t1, ctx)
        || !BN_mod_add_quick(t0, t0, t4, group->field)
        || !BN_mod_add_quick(t4, t3, t2, group->field)
        || !group->meth->field_mul(group, t0, t4, t0, ctx)
        || !group->meth->field_sqr(group, t1, t1, ctx)
        || !BN_mod_lshift_quick(t7, group->b, 2, group->field)
        || !group->meth->field_mul(group, t1, t7, t1, ctx)
        || !BN_mod_lshift1_quick(t0, t0, group->field)
        || !BN_mod_add_quick(t0, t1, t0, group->field)
        || !BN_mod_sub_quick(t1, t2, t3, group->field)
        || !group->meth->field_sqr(group, t1, t1, ctx)
        || !group->meth->field_mul(group, t3, t1, p->X, ctx)
        || !group->meth->field_mul(group, t0, p->Z, t0, ctx)

        || !BN_mod_sub_quick(s->X, t0, t3, group->field)

        || !group->meth->field_mul(group, s->Z, p->Z, t1, ctx)
        || !group->meth->field_sqr(group, t3, r->X, ctx)
        || !group->meth->field_sqr(group, t2, r->Z, ctx)
        || !group->meth->field_mul(group, t4, t2, group->a, ctx)
        || !BN_mod_add_quick(t5, r->X, r->Z, group->field)
        || !group->meth->field_sqr(group, t5, t5, ctx)
        || !BN_mod_sub_quick(t5, t5, t3, group->field)
        || !BN_mod_sub_quick(t5, t5, t2, group->field)
        || !BN_mod_sub_quick(t6, t3, t4, group->field)
        || !group->meth->field_sqr(group, t6, t6, ctx)
        || !group->meth->field_mul(group, t0, t2, t5, ctx)
        || !group->meth->field_mul(group, t0, t7, t0, ctx)

        || !BN_mod_sub_quick(r->X, t6, t0, group->field)
        || !BN_mod_add_quick(t6, t3, t4, group->field)
        || !group->meth->field_sqr(group, t3, t2, ctx)
        || !group->meth->field_mul(group, t7, t3, t7, ctx)
        || !group->meth->field_mul(group, t5, t5, t6, ctx)
        || !BN_mod_lshift1_quick(t5, t5, group->field)

        || !BN_mod_add_quick(r->Z, t7, t5, group->field))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);
    return ret;
}
