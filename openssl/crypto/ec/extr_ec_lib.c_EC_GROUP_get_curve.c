
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* group_get_curve ) (TYPE_2__ const*,int *,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_F_EC_GROUP_GET_CURVE ;
 int ECerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int stub1 (TYPE_2__ const*,int *,int *,int *,int *) ;

int EC_GROUP_get_curve(const EC_GROUP *group, BIGNUM *p, BIGNUM *a, BIGNUM *b,
                       BN_CTX *ctx)
{
    if (group->meth->group_get_curve == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_GET_CURVE, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
    return group->meth->group_get_curve(group, p, a, b, ctx);
}
