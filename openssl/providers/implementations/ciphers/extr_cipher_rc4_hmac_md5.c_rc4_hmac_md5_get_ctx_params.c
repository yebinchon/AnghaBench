
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ivlen; int keylen; } ;
struct TYPE_4__ {int tls_aad_pad_sz; TYPE_1__ base; } ;
typedef TYPE_2__ PROV_RC4_HMAC_MD5_CTX ;
typedef int OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_size_t (int *,int ) ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;

__attribute__((used)) static int rc4_hmac_md5_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)vctx;
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->base.keylen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->base.ivlen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->tls_aad_pad_sz)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}
