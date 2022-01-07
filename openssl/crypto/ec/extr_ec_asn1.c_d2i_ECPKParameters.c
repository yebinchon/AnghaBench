
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int ECPKPARAMETERS ;


 int ECPKPARAMETERS_free (int *) ;
 int EC_F_D2I_ECPKPARAMETERS ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_from_ecpkparameters (int *) ;
 int EC_R_D2I_ECPKPARAMETERS_FAILURE ;
 int EC_R_PKPARAMETERS2GROUP_FAILURE ;
 int ECerr (int ,int ) ;
 int * d2i_ECPKPARAMETERS (int *,unsigned char const**,long) ;

EC_GROUP *d2i_ECPKParameters(EC_GROUP **a, const unsigned char **in, long len)
{
    EC_GROUP *group = ((void*)0);
    ECPKPARAMETERS *params = ((void*)0);
    const unsigned char *p = *in;

    if ((params = d2i_ECPKPARAMETERS(((void*)0), &p, len)) == ((void*)0)) {
        ECerr(EC_F_D2I_ECPKPARAMETERS, EC_R_D2I_ECPKPARAMETERS_FAILURE);
        ECPKPARAMETERS_free(params);
        return ((void*)0);
    }

    if ((group = EC_GROUP_new_from_ecpkparameters(params)) == ((void*)0)) {
        ECerr(EC_F_D2I_ECPKPARAMETERS, EC_R_PKPARAMETERS2GROUP_FAILURE);
        ECPKPARAMETERS_free(params);
        return ((void*)0);
    }

    if (a) {
        EC_GROUP_free(*a);
        *a = group;
    }

    ECPKPARAMETERS_free(params);
    *in = p;
    return group;
}
