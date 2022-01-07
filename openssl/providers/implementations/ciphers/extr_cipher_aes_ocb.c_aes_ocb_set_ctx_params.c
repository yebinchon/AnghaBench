
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ data_type; scalar_t__ data_size; int * data; } ;
struct TYPE_8__ {size_t ivlen; size_t keylen; scalar_t__ enc; } ;
struct TYPE_9__ {scalar_t__ taglen; TYPE_1__ base; int tag; } ;
typedef TYPE_2__ PROV_AES_OCB_CTX ;
typedef TYPE_3__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 size_t OCB_MAX_IV_LEN ;
 scalar_t__ OCB_MAX_TAG_LEN ;
 size_t OCB_MIN_IV_LEN ;
 int OSSL_CIPHER_PARAM_AEAD_IVLEN ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_size_t (TYPE_3__ const*,size_t*) ;
 TYPE_3__* OSSL_PARAM_locate_const (TYPE_3__ const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int memcpy (int ,int *,scalar_t__) ;

__attribute__((used)) static int aes_ocb_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;
    const OSSL_PARAM *p;
    size_t sz;

    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (p->data == ((void*)0)) {

            if (p->data_size > OCB_MAX_TAG_LEN)
                return 0;
            ctx->taglen = p->data_size;
        } else {
            if (p->data_size != ctx->taglen || ctx->base.enc)
                return 0;
            memcpy(ctx->tag, p->data, p->data_size);
        }
     }
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_AEAD_IVLEN);
    if (p != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &sz)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }

        if (sz < OCB_MIN_IV_LEN || sz > OCB_MAX_IV_LEN)
            return 0;
        ctx->base.ivlen = sz;
    }
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != ((void*)0)) {
        size_t keylen;

        if (!OSSL_PARAM_get_size_t(p, &keylen)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ctx->base.keylen != keylen) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
    }
    return 1;
}
