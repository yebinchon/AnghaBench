
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_DIGEST_PARAM_BLOCK_SIZE ;
 int OSSL_DIGEST_PARAM_FLAGS ;
 int OSSL_DIGEST_PARAM_SIZE ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_size_t (int *,size_t) ;
 int OSSL_PARAM_set_ulong (int *,unsigned long) ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;

int digest_default_get_params(OSSL_PARAM params[], size_t blksz, size_t paramsz,
                              unsigned long flags)
{
    OSSL_PARAM *p = ((void*)0);

    p = OSSL_PARAM_locate(params, OSSL_DIGEST_PARAM_BLOCK_SIZE);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, blksz)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_DIGEST_PARAM_SIZE);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, paramsz)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_DIGEST_PARAM_FLAGS);
    if (p != ((void*)0) && !OSSL_PARAM_set_ulong(p, flags)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}
