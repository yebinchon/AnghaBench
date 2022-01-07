
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int num ;
typedef int int32_t ;
typedef int OSSL_PARAM_BLD ;


 int OSSL_PARAM_INTEGER ;
 int param_push_num (int *,char const*,int *,int,int ) ;

int ossl_param_bld_push_int32(OSSL_PARAM_BLD *bld, const char *key,
                              int32_t num)
{
    return param_push_num(bld, key, &num, sizeof(num), OSSL_PARAM_INTEGER);
}
