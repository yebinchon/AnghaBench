
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct gmac_data_st {int cipher; int provctx; int * ctx; } ;
struct TYPE_6__ {scalar_t__ data_type; size_t data_size; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef int EVP_CIPHER_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,size_t,int *) ;
 scalar_t__ EVP_CIPHER_CTX_key_length (int *) ;
 scalar_t__ EVP_CIPHER_mode (int *) ;
 scalar_t__ EVP_CIPH_GCM_MODE ;
 int EVP_CTRL_AEAD_SET_IVLEN ;
 int EVP_EncryptInit_ex (int *,int *,int *,int *,int *) ;
 int EVP_R_CIPHER_NOT_GCM_MODE ;
 int EVP_R_INVALID_KEY_LENGTH ;
 int OSSL_MAC_PARAM_IV ;
 int OSSL_MAC_PARAM_KEY ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int * ossl_prov_cipher_cipher (int *) ;
 int * ossl_prov_cipher_engine (int *) ;
 int ossl_prov_cipher_load_from_params (int *,TYPE_1__ const*,int *) ;

__attribute__((used)) static int gmac_set_ctx_params(void *vmacctx, const OSSL_PARAM params[])
{
    struct gmac_data_st *macctx = vmacctx;
    EVP_CIPHER_CTX *ctx = macctx->ctx;
    OPENSSL_CTX *provctx = PROV_LIBRARY_CONTEXT_OF(macctx->provctx);
    const OSSL_PARAM *p;

   if (ctx == ((void*)0)
        || !ossl_prov_cipher_load_from_params(&macctx->cipher, params, provctx))
        return 0;

    if (EVP_CIPHER_mode(ossl_prov_cipher_cipher(&macctx->cipher))
        != EVP_CIPH_GCM_MODE) {
        ERR_raise(ERR_LIB_PROV, EVP_R_CIPHER_NOT_GCM_MODE);
        return 0;
    }
    if (!EVP_EncryptInit_ex(ctx, ossl_prov_cipher_cipher(&macctx->cipher),
                            ossl_prov_cipher_engine(&macctx->cipher), ((void*)0),
                            ((void*)0)))
        return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (p->data_size != (size_t)EVP_CIPHER_CTX_key_length(ctx)) {
            ERR_raise(ERR_LIB_PROV, EVP_R_INVALID_KEY_LENGTH);
            return 0;
        }
        if (!EVP_EncryptInit_ex(ctx, ((void*)0), ((void*)0), p->data, ((void*)0)))
            return 0;
    }
    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_IV)) != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_IVLEN,
                                 p->data_size, ((void*)0))
            || !EVP_EncryptInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), p->data))
            return 0;
    }
    return 1;
}
