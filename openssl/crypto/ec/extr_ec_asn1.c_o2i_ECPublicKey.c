
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * group; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_F_O2I_ECPUBLICKEY ;
 int EC_KEY_oct2key (TYPE_1__*,unsigned char const*,long,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_PASSED_NULL_PARAMETER ;

EC_KEY *o2i_ECPublicKey(EC_KEY **a, const unsigned char **in, long len)
{
    EC_KEY *ret = ((void*)0);

    if (a == ((void*)0) || (*a) == ((void*)0) || (*a)->group == ((void*)0)) {



        ECerr(EC_F_O2I_ECPUBLICKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    ret = *a;
    if (!EC_KEY_oct2key(ret, *in, len, ((void*)0))) {
        ECerr(EC_F_O2I_ECPUBLICKEY, ERR_R_EC_LIB);
        return 0;
    }
    *in += len;
    return ret;
}
