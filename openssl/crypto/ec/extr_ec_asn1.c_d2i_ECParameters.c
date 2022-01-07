
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int group; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_F_D2I_ECPARAMETERS ;
 int EC_KEY_free (TYPE_1__*) ;
 TYPE_1__* EC_KEY_new () ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int d2i_ECPKParameters (int *,unsigned char const**,long) ;

EC_KEY *d2i_ECParameters(EC_KEY **a, const unsigned char **in, long len)
{
    EC_KEY *ret;

    if (in == ((void*)0) || *in == ((void*)0)) {
        ECerr(EC_F_D2I_ECPARAMETERS, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }

    if (a == ((void*)0) || *a == ((void*)0)) {
        if ((ret = EC_KEY_new()) == ((void*)0)) {
            ECerr(EC_F_D2I_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    } else
        ret = *a;

    if (!d2i_ECPKParameters(&ret->group, in, len)) {
        ECerr(EC_F_D2I_ECPARAMETERS, ERR_R_EC_LIB);
        if (a == ((void*)0) || *a != ret)
             EC_KEY_free(ret);
        return ((void*)0);
    }

    if (a)
        *a = ret;

    return ret;
}
