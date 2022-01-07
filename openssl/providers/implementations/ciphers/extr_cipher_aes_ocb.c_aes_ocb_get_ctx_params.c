
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ data_size; scalar_t__ data_type; int data; } ;
struct TYPE_9__ {scalar_t__ ivlen; scalar_t__ keylen; int enc; int oiv; } ;
struct TYPE_10__ {scalar_t__ taglen; int tag; TYPE_1__ base; } ;
typedef TYPE_2__ PROV_AES_OCB_CTX ;
typedef TYPE_3__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TAGLEN ;
 int OSSL_CIPHER_PARAM_IV ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_3__* OSSL_PARAM_locate (TYPE_3__*,int ) ;
 int OSSL_PARAM_set_octet_string (TYPE_3__*,int ,scalar_t__) ;
 int OSSL_PARAM_set_size_t (TYPE_3__*,scalar_t__) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;
 int PROV_R_INVALID_IV_LENGTH ;
 int PROV_R_INVALID_TAGLEN ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int aes_ocb_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->base.ivlen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->base.keylen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_set_size_t(p, ctx->taglen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IV);
    if (p != ((void*)0)) {
        if (ctx->base.ivlen != p->data_size) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
        if (!OSSL_PARAM_set_octet_string(p, ctx->base.oiv, ctx->base.ivlen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (!ctx->base.enc || p->data_size != ctx->taglen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_TAGLEN);
            return 0;
        }
        memcpy(p->data, ctx->tag, ctx->taglen);
    }
    return 1;
}
