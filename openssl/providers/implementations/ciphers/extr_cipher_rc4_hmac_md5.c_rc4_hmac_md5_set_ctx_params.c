
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {size_t (* tls_init ) (TYPE_3__*,int ,int ) ;int (* init_mackey ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_13__ {size_t keylen; size_t ivlen; } ;
struct TYPE_12__ {scalar_t__ data_type; int data_size; int data; } ;
struct TYPE_11__ {size_t tls_aad_pad_sz; TYPE_3__ base; } ;
typedef TYPE_1__ PROV_RC4_HMAC_MD5_CTX ;
typedef TYPE_2__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 TYPE_9__* GET_HW (TYPE_1__*) ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_size_t (TYPE_2__ const*,size_t*) ;
 TYPE_2__* OSSL_PARAM_locate_const (TYPE_2__ const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_INVALID_DATA ;
 int PROV_R_INVALID_IV_LENGTH ;
 int PROV_R_INVALID_KEY_LENGTH ;
 size_t stub1 (TYPE_3__*,int ,int ) ;
 int stub2 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int rc4_hmac_md5_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)vctx;
    const OSSL_PARAM *p;
    size_t sz;

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &sz)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ctx->base.keylen != sz) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
    }

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &sz)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ctx->base.ivlen != sz) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
    }

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        sz = GET_HW(ctx)->tls_init(&ctx->base, p->data, p->data_size);
        if (sz == 0) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_DATA);
            return 0;
        }
        ctx->tls_aad_pad_sz = sz;
    }
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        GET_HW(ctx)->init_mackey(&ctx->base, p->data, p->data_size);
    }
    return 1;
}
