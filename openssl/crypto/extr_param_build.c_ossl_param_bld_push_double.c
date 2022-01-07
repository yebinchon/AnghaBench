
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int num ;
typedef int OSSL_PARAM_BLD ;


 int OSSL_PARAM_REAL ;
 int param_push_num (int *,char const*,double*,int,int ) ;

int ossl_param_bld_push_double(OSSL_PARAM_BLD *bld, const char *key,
                               double num)
{
    return param_push_num(bld, key, &num, sizeof(num), OSSL_PARAM_REAL);
}
