
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ data_type; scalar_t__ data_size; int data; } ;
struct TYPE_8__ {int enc; } ;
struct TYPE_9__ {int tag; TYPE_1__ base; int tls_aad_pad_sz; int tag_len; int nonce_len; } ;
typedef TYPE_2__ PROV_CHACHA20_POLY1305_CTX ;
typedef TYPE_3__ OSSL_PARAM ;


 int CHACHA20_POLY1305_KEYLEN ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TAGLEN ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_3__* OSSL_PARAM_locate (TYPE_3__*,int ) ;
 int OSSL_PARAM_set_size_t (TYPE_3__*,int ) ;
 scalar_t__ POLY1305_BLOCK_SIZE ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;
 int PROV_R_INVALID_TAGLEN ;
 int PROV_R_TAG_NOTSET ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int chacha20_poly1305_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_CHACHA20_POLY1305_CTX *ctx = (PROV_CHACHA20_POLY1305_CTX *)vctx;
    OSSL_PARAM *p;

    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_set_size_t(p, ctx->nonce_len)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, CHACHA20_POLY1305_KEYLEN)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->tag_len)) {
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
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
        if (!ctx->base.enc) {
            ERR_raise(ERR_LIB_PROV, PROV_R_TAG_NOTSET);
            return 0;
        }
        if (p->data_size == 0 || p->data_size > POLY1305_BLOCK_SIZE) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_TAGLEN);
            return 0;
        }
        memcpy(p->data, ctx->tag, p->data_size);
    }

    return 1;
}
