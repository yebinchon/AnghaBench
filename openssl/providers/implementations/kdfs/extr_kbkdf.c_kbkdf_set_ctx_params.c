
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ ki_len; scalar_t__ label_len; scalar_t__ context_len; scalar_t__ iv_len; int * ctx_init; int ki; int iv; int context; int label; int mode; int provctx; } ;
struct TYPE_11__ {int data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ KBKDF ;


 int COUNTER ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_MAC_CTX_mac (int *) ;
 int EVP_MAC_CTX_set_params (int *,TYPE_1__*) ;
 int EVP_MAC_init (int *) ;
 int EVP_MAC_is_a (int ,int ) ;
 int FEEDBACK ;
 int OSSL_KDF_PARAM_INFO ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_MODE ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_KDF_PARAM_SEED ;
 int OSSL_MAC_NAME_CMAC ;
 int OSSL_MAC_NAME_HMAC ;
 int OSSL_MAC_PARAM_KEY ;
 TYPE_1__ OSSL_PARAM_construct_end () ;
 TYPE_1__ OSSL_PARAM_construct_octet_string (int ,int ,scalar_t__) ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int PROV_R_INVALID_MAC ;
 int PROV_R_INVALID_MODE ;
 int kbkdf_set_buffer (int *,scalar_t__*,TYPE_1__ const*) ;
 int ossl_prov_macctx_load_from_params (int **,TYPE_1__ const*,int *,int *,int *,int *) ;
 scalar_t__ strncasecmp (char*,int ,int ) ;

__attribute__((used)) static int kbkdf_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    KBKDF *ctx = (KBKDF *)vctx;
    OPENSSL_CTX *libctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);
    const OSSL_PARAM *p;
    OSSL_PARAM mparams[2];

    if (!ossl_prov_macctx_load_from_params(&ctx->ctx_init, params, ((void*)0),
                                           ((void*)0), ((void*)0), libctx))
        return 0;
    else if (ctx->ctx_init != ((void*)0)
             && !EVP_MAC_is_a(EVP_MAC_CTX_mac(ctx->ctx_init),
                              OSSL_MAC_NAME_HMAC)
             && !EVP_MAC_is_a(EVP_MAC_CTX_mac(ctx->ctx_init),
                              OSSL_MAC_NAME_CMAC)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_MAC);
        return 0;
    }

    p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_MODE);
    if (p != ((void*)0) && strncasecmp("counter", p->data, p->data_size) == 0) {
        ctx->mode = COUNTER;
    } else if (p != ((void*)0)
               && strncasecmp("feedback", p->data, p->data_size) == 0) {
        ctx->mode = FEEDBACK;
    } else if (p != ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_MODE);
        return 0;
    }

    p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_KEY);
    if (p != ((void*)0) && !kbkdf_set_buffer(&ctx->ki, &ctx->ki_len, p))
        return 0;

    p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SALT);
    if (p != ((void*)0) && !kbkdf_set_buffer(&ctx->label, &ctx->label_len, p))
        return 0;

    p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_INFO);
    if (p != ((void*)0) && !kbkdf_set_buffer(&ctx->context, &ctx->context_len, p))
        return 0;

    p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SEED);
    if (p != ((void*)0) && !kbkdf_set_buffer(&ctx->iv, &ctx->iv_len, p))
        return 0;


    if (ctx->ctx_init != ((void*)0) && ctx->ki_len != 0) {
        mparams[0] = OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                                       ctx->ki, ctx->ki_len);
        mparams[1] = OSSL_PARAM_construct_end();

        if (!EVP_MAC_CTX_set_params(ctx->ctx_init, mparams)
            || !EVP_MAC_init(ctx->ctx_init))
            return 0;
    }

    return 1;
}
