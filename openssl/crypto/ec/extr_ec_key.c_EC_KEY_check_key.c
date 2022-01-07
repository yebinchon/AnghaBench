
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; int * pub_key; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* keycheck ) (TYPE_3__ const*) ;} ;
typedef TYPE_3__ EC_KEY ;


 int EC_F_EC_KEY_CHECK_KEY ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int stub1 (TYPE_3__ const*) ;

int EC_KEY_check_key(const EC_KEY *eckey)
{
    if (eckey == ((void*)0) || eckey->group == ((void*)0) || eckey->pub_key == ((void*)0)) {
        ECerr(EC_F_EC_KEY_CHECK_KEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (eckey->group->meth->keycheck == ((void*)0)) {
        ECerr(EC_F_EC_KEY_CHECK_KEY, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    return eckey->group->meth->keycheck(eckey);
}
