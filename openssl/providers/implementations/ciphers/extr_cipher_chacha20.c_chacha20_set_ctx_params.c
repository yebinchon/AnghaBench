
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 size_t CHACHA20_IVLEN ;
 size_t CHACHA20_KEYLEN ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 int OSSL_PARAM_get_size_t (int const*,size_t*) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_INVALID_IV_LENGTH ;
 int PROV_R_INVALID_KEY_LENGTH ;

__attribute__((used)) static int chacha20_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    size_t len;

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &len)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (len != CHACHA20_KEYLEN) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
    }
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &len)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (len != CHACHA20_IVLEN) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
    }
    return 1;
}
