
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int b; TYPE_1__* meth; } ;
struct TYPE_20__ {int Y; int X; int Z; } ;
struct TYPE_19__ {int (* field_mul ) (TYPE_3__ const*,int ,int ,int ,int *) ;int (* field_sqr ) (TYPE_3__ const*,int ,int ,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;


 int BN_GF2m_add (int ,int ,int ) ;
 int stub1 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub10 (TYPE_3__ const*,int ,int ,int *) ;
 int stub11 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub2 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub3 (TYPE_3__ const*,int ,int ,int *) ;
 int stub4 (TYPE_3__ const*,int ,int ,int *) ;
 int stub5 (TYPE_3__ const*,int ,int ,int *) ;
 int stub6 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub7 (TYPE_3__ const*,int ,int ,int ,int *) ;
 int stub8 (TYPE_3__ const*,int ,int ,int *) ;
 int stub9 (TYPE_3__ const*,int ,int ,int ,int *) ;

__attribute__((used)) static
int ec_GF2m_simple_ladder_step(const EC_GROUP *group,
                               EC_POINT *r, EC_POINT *s,
                               EC_POINT *p, BN_CTX *ctx)
{
    if (!group->meth->field_mul(group, r->Y, r->Z, s->X, ctx)
        || !group->meth->field_mul(group, s->X, r->X, s->Z, ctx)
        || !group->meth->field_sqr(group, s->Y, r->Z, ctx)
        || !group->meth->field_sqr(group, r->Z, r->X, ctx)
        || !BN_GF2m_add(s->Z, r->Y, s->X)
        || !group->meth->field_sqr(group, s->Z, s->Z, ctx)
        || !group->meth->field_mul(group, s->X, r->Y, s->X, ctx)
        || !group->meth->field_mul(group, r->Y, s->Z, p->X, ctx)
        || !BN_GF2m_add(s->X, s->X, r->Y)
        || !group->meth->field_sqr(group, r->Y, r->Z, ctx)
        || !group->meth->field_mul(group, r->Z, r->Z, s->Y, ctx)
        || !group->meth->field_sqr(group, s->Y, s->Y, ctx)
        || !group->meth->field_mul(group, s->Y, s->Y, group->b, ctx)
        || !BN_GF2m_add(r->X, r->Y, s->Y))
        return 0;

    return 1;
}
