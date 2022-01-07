
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t data_size; } ;
struct TYPE_8__ {size_t ivlen; size_t keylen; size_t taglen; int iv_gen; int iv_gen_rand; size_t tls_aad_pad_sz; int buf; int enc; int iv; } ;
typedef TYPE_1__ PROV_GCM_CTX ;
typedef TYPE_2__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 size_t EVP_GCM_TLS_TAG_LEN ;
 size_t GCM_TAG_MAX_SIZE ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TAGLEN ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ;
 int OSSL_CIPHER_PARAM_IV ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 TYPE_2__* OSSL_PARAM_locate (TYPE_2__*,int ) ;
 int OSSL_PARAM_set_octet_string (TYPE_2__*,int ,size_t) ;
 int OSSL_PARAM_set_size_t (TYPE_2__*,size_t) ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;
 int PROV_R_INVALID_IV_LENGTH ;
 int PROV_R_INVALID_TAG ;
 size_t UNINITIALISED_SIZET ;

int gcm_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_GCM_CTX *ctx = (PROV_GCM_CTX *)vctx;
    OSSL_PARAM *p;
    size_t sz;

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->ivlen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->keylen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != ((void*)0)) {
        size_t taglen = (ctx->taglen != UNINITIALISED_SIZET) ? ctx->taglen :
                         GCM_TAG_MAX_SIZE;

        if (!OSSL_PARAM_set_size_t(p, taglen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IV);
    if (p != ((void*)0)) {
        if (ctx->iv_gen != 1 && ctx->iv_gen_rand != 1)
            return 0;
        if (ctx->ivlen != p->data_size) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
        if (!OSSL_PARAM_set_octet_string(p, ctx->iv, ctx->ivlen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->tls_aad_pad_sz)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0)) {
        sz = p->data_size;
        if (sz == 0
            || sz > EVP_GCM_TLS_TAG_LEN
            || !ctx->enc
            || ctx->taglen == UNINITIALISED_SIZET) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_TAG);
            return 0;
        }
        if (!OSSL_PARAM_set_octet_string(p, ctx->buf, sz)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    return 1;
}
