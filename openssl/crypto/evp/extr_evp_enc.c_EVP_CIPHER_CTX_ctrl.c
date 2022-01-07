
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* ctrl ) (TYPE_1__*,int,int,void*) ;int * prov; } ;
struct TYPE_6__ {TYPE_3__* cipher; int provctx; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_CIPHER_CTX ;
 int EVP_CTRL_RET_UNSUPPORTED ;





 int EVP_F_EVP_CIPHER_CTX_CTRL ;
 int EVP_R_CTRL_NOT_IMPLEMENTED ;
 int EVP_R_CTRL_OPERATION_NOT_IMPLEMENTED ;
 int EVP_R_NO_CIPHER_SET ;
 int EVPerr (int ,int ) ;
 int OSSL_CIPHER_PARAM_AEAD_MAC_KEY ;
 int OSSL_CIPHER_PARAM_AEAD_TAG ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ;
 int OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED ;
 int OSSL_CIPHER_PARAM_IV ;
 int OSSL_CIPHER_PARAM_IVLEN ;
 int OSSL_CIPHER_PARAM_KEYLEN ;
 int OSSL_CIPHER_PARAM_RANDOM_KEY ;
 int OSSL_CIPHER_PARAM_RC2_KEYBITS ;
 int OSSL_CIPHER_PARAM_ROUNDS ;
 int OSSL_CIPHER_PARAM_SPEED ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_octet_string (int ,void*,size_t) ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int OSSL_PARAM_construct_uint (int ,unsigned int*) ;
 int evp_do_ciph_ctx_getparams (TYPE_3__*,int ,int *) ;
 int evp_do_ciph_ctx_setparams (TYPE_3__*,int ,int *) ;
 int stub1 (TYPE_1__*,int,int,void*) ;

int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr)
{
    int ret = EVP_CTRL_RET_UNSUPPORTED;
    int set_params = 1;
    size_t sz = arg;
    unsigned int i;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    if (ctx == ((void*)0) || ctx->cipher == ((void*)0)) {
        EVPerr(EVP_F_EVP_CIPHER_CTX_CTRL, EVP_R_NO_CIPHER_SET);
        return 0;
    }

    if (ctx->cipher->prov == ((void*)0))
        goto legacy;

    switch (type) {
    case 132:
        params[0] = OSSL_PARAM_construct_size_t(OSSL_CIPHER_PARAM_KEYLEN, &sz);
        break;
    case 133:
        set_params = 0;
        params[0] =
            OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_RANDOM_KEY,
                                              ptr, sz);
        break;

    case 134:







        return 1;
    case 131:
    default:
        goto end;
    case 137:
        set_params = 0;
        params[0] = OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_IV,
                                                      ptr, sz);
        break;
    case 142:
        if (arg < 0)
            return 0;
        params[0] = OSSL_PARAM_construct_size_t(OSSL_CIPHER_PARAM_IVLEN, &sz);
        break;
    case 138:
        params[0] =
            OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_AEAD_TLS1_IV_FIXED,
                                              ptr, sz);
        break;
    case 135:
        set_params = 0;
    case 129:
        if (arg < 0)
            return 0;
        i = (unsigned int)arg;
        params[0] = OSSL_PARAM_construct_uint(OSSL_CIPHER_PARAM_ROUNDS, &i);
        break;
    case 128:
        if (arg < 0)
            return 0;
        i = (unsigned int)arg;
        params[0] = OSSL_PARAM_construct_uint(OSSL_CIPHER_PARAM_SPEED, &i);
        break;
    case 143:
        set_params = 0;
    case 140:
        params[0] = OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_AEAD_TAG,
                                                      ptr, sz);
        break;
    case 141:
        params[0] =
            OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_AEAD_MAC_KEY,
                                              ptr, sz);
        break;
    case 139:

        params[0] =
            OSSL_PARAM_construct_octet_string(OSSL_CIPHER_PARAM_AEAD_TLS1_AAD,
                                              ptr, sz);
        ret = evp_do_ciph_ctx_setparams(ctx->cipher, ctx->provctx, params);
        if (ret <= 0)
            goto end;
        params[0] =
            OSSL_PARAM_construct_size_t(OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD, &sz);
        ret = evp_do_ciph_ctx_getparams(ctx->cipher, ctx->provctx, params);
        if (ret <= 0)
            goto end;
        return sz;

    case 136:
        set_params = 0;
    case 130:
        params[0] = OSSL_PARAM_construct_size_t(OSSL_CIPHER_PARAM_RC2_KEYBITS, &sz);
        break;

    }

    if (set_params)
        ret = evp_do_ciph_ctx_setparams(ctx->cipher, ctx->provctx, params);
    else
        ret = evp_do_ciph_ctx_getparams(ctx->cipher, ctx->provctx, params);
    goto end;


legacy:
    if (ctx->cipher->ctrl == ((void*)0)) {
        EVPerr(EVP_F_EVP_CIPHER_CTX_CTRL, EVP_R_CTRL_NOT_IMPLEMENTED);
        return 0;
    }

    ret = ctx->cipher->ctrl(ctx, type, arg, ptr);

 end:
    if (ret == EVP_CTRL_RET_UNSUPPORTED) {
        EVPerr(EVP_F_EVP_CIPHER_CTX_CTRL,
               EVP_R_CTRL_OPERATION_NOT_IMPLEMENTED);
        return 0;
    }
    return ret;
}
