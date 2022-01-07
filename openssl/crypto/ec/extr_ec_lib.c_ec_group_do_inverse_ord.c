
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* field_inverse_mod_ord ) (TYPE_2__ const*,int *,int const*,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int ec_field_inverse_mod_ord (TYPE_2__ const*,int *,int const*,int *) ;
 int stub1 (TYPE_2__ const*,int *,int const*,int *) ;

int ec_group_do_inverse_ord(const EC_GROUP *group, BIGNUM *res,
                            const BIGNUM *x, BN_CTX *ctx)
{
    if (group->meth->field_inverse_mod_ord != ((void*)0))
        return group->meth->field_inverse_mod_ord(group, res, x, ctx);
    else
        return ec_field_inverse_mod_ord(group, res, x, ctx);
}
