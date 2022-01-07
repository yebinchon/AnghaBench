
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

__attribute__((used)) static int aes_xts_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    const OSSL_PARAM *p;





    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0)) {
        size_t keylen;

        if (!OSSL_PARAM_get_size_t(p, &keylen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }

        if (keylen != ctx->keylen)
            return 0;
    }

    return 1;
}
