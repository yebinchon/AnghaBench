
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ data_type; int data_size; int * data; } ;
struct TYPE_9__ {int tag_set; int m; size_t l; size_t tls_aad_pad_sz; int buf; scalar_t__ enc; } ;
typedef TYPE_1__ PROV_CCM_CTX ;
typedef TYPE_2__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_IVLEN ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_size_t (TYPE_2__ const*,size_t*) ;
 TYPE_2__* OSSL_PARAM_locate_const (TYPE_2__ const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_INVALID_DATA ;
 int PROV_R_INVALID_IVLEN ;
 int PROV_R_INVALID_TAGLEN ;
 int PROV_R_TAG_NOT_NEEDED ;
 size_t ccm_tls_init (TYPE_1__*,int *,int) ;
 scalar_t__ ccm_tls_iv_set_fixed (TYPE_1__*,int *,int) ;
 int memcpy (int ,int *,int) ;

int ccm_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    PROV_CCM_CTX *ctx = (PROV_CCM_CTX *)vctx;
    const OSSL_PARAM *p;
    size_t sz;

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if ((p->data_size & 1) || (p->data_size < 4) || p->data_size > 16) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_TAGLEN);
            return 0;
        }

        if (p->data != ((void*)0)) {
            if (ctx->enc) {
                ERR_raise(ERR_LIB_PROV, PROV_R_TAG_NOT_NEEDED);
                return 0;
            }
            memcpy(ctx->buf, p->data, p->data_size);
            ctx->tag_set = 1;
        }
        ctx->m = p->data_size;
    }

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_IVLEN);
    if (p != ((void*)0)) {
        size_t ivlen;

        if (!OSSL_PARAM_get_size_t(p, &sz)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        ivlen = 15 - sz;
        if (ivlen < 2 || ivlen > 8) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
            return 0;
        }
        ctx->l = ivlen;
    }

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        sz = ccm_tls_init(ctx, p->data, p->data_size);
        if (sz == 0) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_DATA);
            return 0;
        }
        ctx->tls_aad_pad_sz = sz;
    }

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ccm_tls_iv_set_fixed(ctx, p->data, p->data_size) == 0) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
            return 0;
        }
    }

    return 1;
}
