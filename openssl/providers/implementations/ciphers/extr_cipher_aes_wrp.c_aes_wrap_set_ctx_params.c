
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t keylen; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;
typedef int OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 int OSSL_PARAM_get_size_t (int const*,size_t*) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_INVALID_KEY_LENGTH ;

__attribute__((used)) static int aes_wrap_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    const OSSL_PARAM *p;
    size_t keylen = 0;

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &keylen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ctx->keylen != keylen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
    }
    return 1;
}
