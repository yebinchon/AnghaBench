
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* meth; int field; } ;
struct TYPE_13__ {scalar_t__ Z_is_one; int * Y; int * X; int * Z; } ;
struct TYPE_12__ {int (* field_mul ) (TYPE_3__ const*,int *,int *,int *,int *) ;int (* field_sqr ) (TYPE_3__ const*,int *,int *,int *) ;int (* field_encode ) (TYPE_3__ const*,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_priv_rand_range_ex (int *,int ,int *) ;
 int EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int stub1 (TYPE_3__ const*,int *,int *,int *) ;
 int stub2 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub3 (TYPE_3__ const*,int *,int *,int *) ;
 int stub4 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub5 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub6 (TYPE_3__ const*,int *,int *,int *,int *) ;

int ec_GFp_simple_blind_coordinates(const EC_GROUP *group, EC_POINT *p,
                                    BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *lambda = ((void*)0);
    BIGNUM *temp = ((void*)0);

    BN_CTX_start(ctx);
    lambda = BN_CTX_get(ctx);
    temp = BN_CTX_get(ctx);
    if (temp == ((void*)0)) {
        ECerr(EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    do {
        if (!BN_priv_rand_range_ex(lambda, group->field, ctx)) {
            ECerr(EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, ERR_R_BN_LIB);
            goto err;
        }
    } while (BN_is_zero(lambda));


    if (group->meth->field_encode != ((void*)0)
        && !group->meth->field_encode(group, lambda, lambda, ctx))
        goto err;
    if (!group->meth->field_mul(group, p->Z, p->Z, lambda, ctx))
        goto err;
    if (!group->meth->field_sqr(group, temp, lambda, ctx))
        goto err;
    if (!group->meth->field_mul(group, p->X, p->X, temp, ctx))
        goto err;
    if (!group->meth->field_mul(group, temp, temp, lambda, ctx))
        goto err;
    if (!group->meth->field_mul(group, p->Y, p->Y, temp, ctx))
        goto err;
    p->Z_is_one = 0;

    ret = 1;

 err:
    BN_CTX_end(ctx);
    return ret;
}
