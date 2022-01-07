
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OSSL_KDF_PARAM_SIZE ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_size_t (int *,int ) ;
 int SIZE_MAX ;

__attribute__((used)) static int kbkdf_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_KDF_PARAM_SIZE);
    if (p == ((void*)0))
        return -2;


    return OSSL_PARAM_set_size_t(p, SIZE_MAX);
}
