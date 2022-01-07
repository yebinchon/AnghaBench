
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ data_type; scalar_t__ data_size; } ;
struct TYPE_10__ {int byte; } ;
struct TYPE_11__ {TYPE_1__ tag; } ;
struct TYPE_12__ {scalar_t__ taglen; scalar_t__ keylen; int enc; TYPE_2__ siv; } ;
typedef TYPE_2__ SIV128_CONTEXT ;
typedef TYPE_3__ PROV_AES_SIV_CTX ;
typedef TYPE_4__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TAGLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_4__* OSSL_PARAM_locate (TYPE_4__*,int ) ;
 int OSSL_PARAM_set_octet_string (TYPE_4__*,int *,scalar_t__) ;
 int OSSL_PARAM_set_size_t (TYPE_4__*,scalar_t__) ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;

__attribute__((used)) static int aes_siv_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0) && p->data_type == OSSL_PARAM_OCTET_STRING) {
        if (!ctx->enc
            || p->data_size != ctx->taglen
            || !OSSL_PARAM_set_octet_string(p, &sctx->tag.byte, ctx->taglen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->taglen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->keylen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}
