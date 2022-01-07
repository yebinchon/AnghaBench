
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int KDF_SSKDF ;


 int OSSL_KDF_PARAM_SIZE ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_size_t (int *,int ) ;
 int sskdf_size (int *) ;

__attribute__((used)) static int sskdf_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    KDF_SSKDF *ctx = (KDF_SSKDF *)vctx;
    OSSL_PARAM *p;

    if ((p = OSSL_PARAM_locate(params, OSSL_KDF_PARAM_SIZE)) != ((void*)0))
        return OSSL_PARAM_set_size_t(p, sskdf_size(ctx));
    return -2;
}
