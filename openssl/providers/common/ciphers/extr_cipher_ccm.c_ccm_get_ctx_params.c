
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ data_size; scalar_t__ data_type; int data; } ;
struct TYPE_12__ {size_t m; size_t keylen; size_t tls_aad_pad_sz; scalar_t__ len_set; scalar_t__ iv_set; scalar_t__ tag_set; TYPE_1__* hw; int enc; int iv; } ;
struct TYPE_11__ {int (* gettag ) (TYPE_2__*,int ,scalar_t__) ;} ;
typedef TYPE_2__ PROV_CCM_CTX ;
typedef TYPE_3__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TAGLEN ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ;
 int OSSL_CIPHER_PARAM_IV ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_3__* OSSL_PARAM_locate (TYPE_3__*,int ) ;
 int OSSL_PARAM_set_octet_string (TYPE_3__*,int ,scalar_t__) ;
 int OSSL_PARAM_set_size_t (TYPE_3__*,size_t) ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;
 int PROV_R_INVALID_IVLEN ;
 int PROV_R_TAG_NOTSET ;
 scalar_t__ ccm_get_ivlen (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,scalar_t__) ;

int ccm_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_CCM_CTX *ctx = (PROV_CCM_CTX *)vctx;
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ccm_get_ivlen(ctx))) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != ((void*)0)) {
        size_t m = ctx->m;

        if (!OSSL_PARAM_set_size_t(p, m)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IV);
    if (p != ((void*)0)) {
        if (ccm_get_ivlen(ctx) != p->data_size) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
            return 0;
        }
        if (!OSSL_PARAM_set_octet_string(p, ctx->iv, p->data_size)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->keylen)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->tls_aad_pad_sz)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0)) {
        if (!ctx->enc || !ctx->tag_set) {
            ERR_raise(ERR_LIB_PROV, PROV_R_TAG_NOTSET);
            return 0;
        }
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
        if (!ctx->hw->gettag(ctx, p->data, p->data_size))
            return 0;
        ctx->tag_set = 0;
        ctx->iv_set = 0;
        ctx->len_set = 0;
    }
    return 1;
}
