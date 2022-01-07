
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int ECPKPARAMETERS ;


 int ECPKPARAMETERS_free (int *) ;
 int EC_F_I2D_ECPKPARAMETERS ;
 int * EC_GROUP_get_ecpkparameters (int const*,int *) ;
 int EC_R_GROUP2PKPARAMETERS_FAILURE ;
 int EC_R_I2D_ECPKPARAMETERS_FAILURE ;
 int ECerr (int ,int ) ;
 int i2d_ECPKPARAMETERS (int *,unsigned char**) ;

int i2d_ECPKParameters(const EC_GROUP *a, unsigned char **out)
{
    int ret = 0;
    ECPKPARAMETERS *tmp = EC_GROUP_get_ecpkparameters(a, ((void*)0));
    if (tmp == ((void*)0)) {
        ECerr(EC_F_I2D_ECPKPARAMETERS, EC_R_GROUP2PKPARAMETERS_FAILURE);
        return 0;
    }
    if ((ret = i2d_ECPKPARAMETERS(tmp, out)) == 0) {
        ECerr(EC_F_I2D_ECPKPARAMETERS, EC_R_I2D_ECPKPARAMETERS_FAILURE);
        ECPKPARAMETERS_free(tmp);
        return 0;
    }
    ECPKPARAMETERS_free(tmp);
    return ret;
}
